package com.onlinebazzar.controller;

import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.services.VendorService;

@Controller
public class VendorController {
	
	/**
	 * Handle login page request
	 * 
	 * @return
	 */
	
	@Autowired
	VendorService vendorService;
	@RequestMapping(value = "/vendorRegister", method = RequestMethod.GET)
	public String createVendorForm(Model model) {
		model.addAttribute("vendor", new Vendor());
		return "vendor/vendorRegistration";
	}

	
	/*public String register(Model model) {
		model.addAttribute("customer", new Customer());
		customerService.save(entity);
		return "register";
	}*/
	


@RequestMapping(value="/vendor", method=RequestMethod.POST)
public String saveVendor(@ModelAttribute("vendor") @Valid Vendor vendor, BindingResult result, HttpServletRequest request, Locale locale){
	
	
		if (result.hasErrors()) {
			return "vendor/vendorRegistration";
		}
		
	vendorService.save(vendor);
		//after the custmer service implimentation created
	return "home";
	}
}
	

