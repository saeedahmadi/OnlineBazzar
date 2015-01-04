package com.onlinebazzar.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.commons.Role;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Customer;
import com.onlinebazzar.model.ShoppingCart;
import com.onlinebazzar.model.WebUser;
import com.onlinebazzar.services.WebUserService;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes({"user", "shoppingCart"})
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
/*	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		System.out.println("test");
		System.out.println("test");
		System.out.println("test");
		System.out.println("test");
		model.addAttribute("shoppingCart", new ShoppingCart());
		return "HomePage";
	}*/

	@Autowired
	WebUserService webUserService;

	/**
	 * Handle the home request and place view according to the user type
	 * 
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String clientHome(HttpServletRequest request,Model model) {

		model.addAttribute("shoppingCart", new ShoppingCart());
		Object principal = SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			String username = ((UserDetails) principal).getUsername();
			WebUser user = webUserService.getUserByUserName(username);
			
			if (user.getRole().equals(Role.ADMIN)) {
				model.addAttribute("category", new Category());
				request.getSession().setAttribute("user", user);
				return "/admin/index";
			}

			if (user.getRole().equals(Role.CUSTOMER)) {
				Customer customer=(Customer) user.getPerson();
				request.getSession().setAttribute("user", customer);
				return "/HomePage";
			}
		}

		return "/HomePage";

	}

	/**
	 * Return index page
	 * 
	 * @return
	 */
	@RequestMapping(value = "/HomePage", method = RequestMethod.GET)
	public String index() {
		return "/HomePage";
	}

}
