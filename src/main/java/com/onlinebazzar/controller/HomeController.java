package com.onlinebazzar.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.commons.Role;
import com.onlinebazzar.encryption.EncryptDecryptStringWithDES;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Customer;
import com.onlinebazzar.model.Person;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.ShoppingCart;
import com.onlinebazzar.services.CategoryService;
import com.onlinebazzar.services.ProductService;
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

	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	
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
		model.addAttribute("products", productService.findAll());
		model.addAttribute("serverTime", formattedDate );

		model.addAttribute("serverTime", formattedDate);
		System.out.println("test");
		System.out.println("test");
		System.out.println("test");
		System.out.println("test");
		model.addAttribute("shoppingCart", new ShoppingCart());
		//Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      //String name = auth.getName(); //get logged in username
	      //System.out.println(name);
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
		
		System.out.println(EncryptDecryptStringWithDES.encrypt("abc"));
		System.out.println(EncryptDecryptStringWithDES.decrypt(EncryptDecryptStringWithDES.encrypt("abc")));
		if(!model.containsAttribute("shoppingCart"))
			model.addAttribute("shoppingCart", new ShoppingCart());
		Object principal = SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			String username = ((UserDetails) principal).getUsername();
			WebUser user = webUserService.getUserByUserName(username);
			
			if (user.getRole().equals(Role.ADMIN)) {
				//model.addAttribute("category", new Category());
				request.getSession().setAttribute("user", user);
				return "redirect:/adminPanel";
			}

			if (user.getRole().equals(Role.CUSTOMER)) {
				Customer customer=(Customer) user.getPerson();
				request.getSession().setAttribute("user", customer);
				return "/HomePage";
			}
			
			if (user.getRole().equals(Role.VADMIN)) {
				//model.addAttribute("category", new Category());
				request.getSession().setAttribute("user", user);
				return "redirect:/vendorPanel";
			}
			
			
			
		}
		
		
		List<Product> searchResult = productService.findAll();
		model.addAttribute("productList",searchResult);
	 		
		

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
	
	@RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
	public String detailsSearchResult(Model model, @ModelAttribute("id")  Long id ){
		
		
		Product product = productService.findOne(id);
		model.addAttribute("product", product);
		Category category = categoryService.findOne(product.getCategory().getId());
		
		
		List<Product> searchResult = category.getProducts();
		
		Iterator<Product> it = searchResult.iterator();
		
		while (it.hasNext()) {
			Product p = (Product) it.next();
			if(p.getId() == id)
				it.remove();
		}
		model.addAttribute("productList",searchResult);
 		return "details";
	}

}
