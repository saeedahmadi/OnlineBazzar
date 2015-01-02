package com.onlinebazzar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	/**
	 * Handle login page request
	 * 
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "/security/login";
	}

	/**
	 * Handle login failed request
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
	public String loginerror(Model model) {
		model.addAttribute("error", "true");
		return "/security/login";
	}

	/**
	 * Handle logout request
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model) {
		return "/security/login";
	} 
}
