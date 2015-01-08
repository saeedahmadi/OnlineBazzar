package com.onlinebazzar.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

import com.onlinebazzar.commons.Role;
import com.onlinebazzar.model.Customer;
import com.onlinebazzar.services.CustomerService;

@Controller
@Scope("session")
@SessionAttributes("user")
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
		return "thankYou";
	}
	
	@RequestMapping(value = "/customer/edit", method = RequestMethod.GET)
	public String editCustomerProfile(HttpSession session,Model model){
		Customer customer =(Customer)session.getAttribute("user");
		model.addAttribute("currentCustomer",customer );
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
	
	//user registeration mapping
	@RequestMapping(value = "/UserRegisteration", method = RequestMethod.GET)
	public String createUSerForm(Model model) {
		model.addAttribute("customer", new Customer());
		return "customer/UserRegister";
	}

	@RequestMapping(value = "/registeredUsers", method = RequestMethod.POST)
	public String saveUser(
			@ModelAttribute("customer") @Valid Customer customer,
			BindingResult result, HttpServletRequest request, Locale locale,Model model) {

		if (result.hasErrors()) {
			return "customer/UserRegister";
		}
		customer.getWebuser().setRole(Role.CUSTOMER);
		customerService.save(customer);
		return "redirect:/login";
	}
	
}
