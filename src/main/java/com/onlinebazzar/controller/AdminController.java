package com.onlinebazzar.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onlinebazzar.model.Address;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.services.AddressService;
import com.onlinebazzar.services.CategoryService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {
	
	@Autowired
	AddressService addressService;
	@Autowired
	CategoryService categoryService;
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/admin/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		List<Address> address = addressService.findAll();
		model.addAttribute("addresses", address);
		System.out.println(address.isEmpty());
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		
		return "admin/index";
	}
	

	  @RequestMapping(value = "/categories", method = RequestMethod.GET)
	    public String listCategories(Model model) {
	        model.addAttribute("category", new Category());
	        model.addAttribute("categories", categoryService.findAll());
	        return "admin/index";
	    }
	     
	    //For add and update category both
	    @RequestMapping(value= "/category/add", method = RequestMethod.POST)
	    public String addCategory(@ModelAttribute("category") Category c){
	        System.out.println(c);
	        if(c.getId() == null){
	        	
	            //new person, add it
	            categoryService.save(c);
	        }else{
	            //existing person, call update
	            categoryService.update(c);
	        }
	         
	        return "redirect:/categories";
	         
	    }
	    
	    @RequestMapping("/edit/{id}")
	    public String editCategory(@PathVariable("id") Long id, Model model){
	        model.addAttribute("category", this.categoryService.findOne(id));
	        model.addAttribute("categories", this.categoryService.findAll());
	        return "admin/index";
	    }
	    
	    @RequestMapping("/remove/{id}")
	    public String deleteCategory(@PathVariable("id") Long id, Model model){
	        //model.addAttribute("category", this.categoryService.findOne(id));
	    	categoryService.deleteById(id);
	        model.addAttribute("category", new Category());
	        model.addAttribute("categories", this.categoryService.findAll());
	        return "admin/index";
	    }
	
}
