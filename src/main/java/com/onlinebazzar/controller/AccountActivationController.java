package com.onlinebazzar.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onlinebazzar.services.WebUserService;

@Controller
public class AccountActivationController {
	
	/**
	 * Handle login page request
	 * 
	 * @return
	 */
	@Autowired
	WebUserService webuserService;
	@RequestMapping(value = "/validateRegister/{id}", method = RequestMethod.GET)
	public String activateAccount(HttpServletRequest request,@PathVariable("id") String id) {
		System.out.println(id);
		webuserService.updateUserByPasswordRecovery(id);
		return "redirect:/login";
	}

	

	
}
