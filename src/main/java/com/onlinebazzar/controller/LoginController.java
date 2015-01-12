package com.onlinebazzar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.onlinebazzar.model.ShoppingCart;

@Controller
@SessionAttributes({ "shoppingCart"})
public class LoginController {
	
	/**
	 * Handle login page request
	 * 
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
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
		model.addAttribute("shoppingCart", new ShoppingCart());
		return "/security/login";
	} 
}
