package com.onlinebazzar.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.model.Customer;
import com.onlinebazzar.services.CustomerService;

@Controller
@Scope("session")
@SessionAttributes("user")
public class VendorProductController {

	/**
	 * Handle login page request
	 * 
	 * @return
	 */

	  @RequestMapping(value = "/vendor/product/add", method = RequestMethod.GET)
	    public String vendorAddProduct(Model model) {
	        
	        return "vendor/addproduct";
	    }
}
