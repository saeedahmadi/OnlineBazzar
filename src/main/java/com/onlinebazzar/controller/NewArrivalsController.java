package com.onlinebazzar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewArrivalsController {
	
	@RequestMapping(value = "/newArrivals", method = RequestMethod.GET)
	public String showAdminPanel(Model model) {

		return "/newArrivals";
	}

}
