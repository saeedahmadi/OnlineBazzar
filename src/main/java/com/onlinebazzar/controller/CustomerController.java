package com.onlinebazzar.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.model.Customer;
import com.onlinebazzar.model.ShoppingCart;
import com.onlinebazzar.services.CustomerService;

@Controller
public class CustomerController {

	/**
	 * Handle login page request
	 * 
	 * @return
	 */

	@Autowired
	CustomerService customerService;

	@RequestMapping(value = "/userRegister", method = RequestMethod.GET)
	public String createCustomerForm(Model model) {
		model.addAttribute("customer", new Customer());
		return "customer/register";
	}

	@RequestMapping(value = "/users", method = RequestMethod.POST)
	public String saveCustomer(
			@ModelAttribute("customer") @Valid Customer customer,
			BindingResult result, HttpServletRequest request, Locale locale,Model model) {

		if (result.hasErrors()) {
			return "customer/register";
		}
		
		customerService.save(customer);
		return "home";
	}
	
	@RequestMapping(value = "/customer/edit", method = RequestMethod.GET)
	public String editCustomerProfile(HttpServletRequest request,Model model){
		model.addAttribute("currentCustomer", (Customer)request.getSession().getAttribute("user"));
		return "customer/customerEditProfile";
	}
	
	@RequestMapping(value = "/customer/editProfile", method = RequestMethod.POST)
	public String editCustomer(@ModelAttribute("currentCustomer") @Valid Customer customer,
			BindingResult result, HttpServletRequest request, Locale locale) {
		System.out.println(customer.getFirstName());
		if (result.hasErrors()) {
			return "redirect:/";
		}
		customerService.update(customer);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/customer/checkout", method = RequestMethod.GET)
	public String checkOut(){
		return"confirmPayment";
	}
}
