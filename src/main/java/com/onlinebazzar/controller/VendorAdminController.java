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
import com.onlinebazzar.commons.Role;
import com.onlinebazzar.model.Person;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.model.WebUser;
import com.onlinebazzar.services.PersonService;
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
	PersonService personService;
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
	public String saveVendor(@ModelAttribute("vendor") @Valid Vendor vendor,
BindingResult result, HttpServletRequest request, Locale locale){


		if (result.hasErrors()) {
			return "vendor/vendorRegistration";
		}
		vendor =vendorService.update(vendor);
		 Person p = createVendorAdmin(vendor);
         personService.save(p);
         notifyVendorAdmin(p);
	    		
		//notifyAdminVendor(vendor.getEmail(),vendor.getName(),msg);
		//after the custmer service implimentation created
		return "home";
	}
	
	 private Person createVendorAdmin(Vendor v){
	    	Person p = new Person();
	    	p.setFirstName(v.getName());
	    	p.setLastName(v.getName());
	    	p.setEmail(v.getEmail());
	    	p.setPhoneNumber(v.getPhoneNumber());
	    	p.setAddress(v.getAddress());
	    	
	    	WebUser user = new WebUser();
	    	user.setRole(Role.VADMIN);
	    	user.setUsername(v.getName());
	    	user.setPassword(v.getName()+"123");
	    	p.setWebuser(user);
	    	p.setVendor(v);
	    	p.getWebuser().setEnabled(false);
			return p;
	    	
	    }

	@Async
	private void notifyVendorAdmin(Person p){
		String msg="";
		msg=("Dear "+p.getFirstName()+" ( "+p.getLastName()+" )"+ ", thank you for using our service!\n"
	    		+ "Please use the link below to activate your account.\n");
		msg+="<a href='http://localhost:8080/onlinebazzar/validateRegister/"+p.getWebuser().getPasswordRecovery()+">"+"Activate"+"</a>";
		msg+="Your Account Details are Username: "+p.getWebuser().getUsername()+"\t Password:\t"+p.getWebuser().getPassword();
		msg+="Warm Regards,\n Online Bazzar Team";
		mail.sendMail("testmeluck@gmail.com",
				p.getEmail(),
				"OnlineBazzar Activatioin", 
				msg);
	}
}





