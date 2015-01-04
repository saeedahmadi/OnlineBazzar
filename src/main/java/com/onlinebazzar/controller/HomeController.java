package com.onlinebazzar.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.model.ShoppingCart;
import com.onlinebazzar.services.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("shoppingCart")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	ProductService productService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		model.addAttribute("products", productService.findAll());
		model.addAttribute("serverTime", formattedDate );
		System.out.println("test");
		System.out.println("test");
		System.out.println("test");
		System.out.println("test");
		model.addAttribute("shoppingCart", new ShoppingCart());
		//Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      //String name = auth.getName(); //get logged in username
	      //System.out.println(name);
		return "HomePage";
	}
	
}
