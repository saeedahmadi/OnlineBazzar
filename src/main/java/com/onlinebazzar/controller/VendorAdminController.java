package com.onlinebazzar.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onlinebazzar.commons.MailMail;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.services.VendorService;

@Controller
public class VendorAdminController {

	/**
	 * Handle login page request
	 * 
	 * @return
	 */

	@Autowired
	VendorService vendorService;
	@Autowired
	MailMail mail;	
	@RequestMapping(value = "/roleManagement", method = RequestMethod.GET)
	public String createVendorForm(Model model) {
		model.addAttribute("vendor", new Vendor());
		return "vendor/RoleManagmentRegistration";
	}


	/*public String register(Model model) {
		model.addAttribute("customer", new Customer());
		customerService.save(entity);
		return "register";
	}*/


	@RequestMapping(value="/vendor", method=RequestMethod.GET)
	public String vendorRegistration(Model model){
		model.addAttribute("vendor", new Vendor());
		return "vendor/vendorRegistration";

	}


	@RequestMapping(value="/vendor", method=RequestMethod.POST)
	public String saveVendor(@ModelAttribute("vendor") @Valid Vendor vendor, BindingResult result, HttpServletRequest request, Locale locale){


		if (result.hasErrors()) {
			return "vendor/vendorRegistration";
		}

		vendorService.save(vendor);
		String msg; 
	    msg=("Dear "+vendor.getName()+" ( "+vendor.getEmail()+" )"+ ", thank you for using our service!"
	    		+ "Please use the link below to set you settings.");		
		notifyAdminVendor(vendor.getEmail(),vendor.getName(),msg);
		//after the custmer service implimentation created
		return "home";
	}

	@Async
	private void notifyAdminVendor(String email,String code,String msg){
		msg+=("<a href='http://localhost:8080/studio/validateRegister/id="+code);
		mail.sendMail("testmeluck@gmail.com",
				email,
				"OnlineBazzar Activatioin", 
				msg);
	}
}





