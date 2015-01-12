package com.onlinebazzar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({ "user", "shoppingCart"})
public class NewArrivalsController {
	
	@RequestMapping(value = "/newArrivals", method = RequestMethod.GET)
	public String showAdminPanel(Model model) {

		return "/newArrivals";
	}

}
