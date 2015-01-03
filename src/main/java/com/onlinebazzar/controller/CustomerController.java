package com.onlinebazzar.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onlinebazzar.model.Customer;
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

	
	/*public String register(Model model) {
		model.addAttribute("customer", new Customer());
		customerService.save(entity);
		return "register";
	}*/
	


@RequestMapping(value="/users", method=RequestMethod.POST)
public String saveCustomer(@ModelAttribute("customer") @Valid Customer customer, BindingResult result, HttpServletRequest request, Locale locale){
	
	
		if (result.hasErrors()) {
			return "customer/register";
		}
		
	customerService.save(customer);
		//after the custmer service implimentation created
	return "home";
	}
}
	

