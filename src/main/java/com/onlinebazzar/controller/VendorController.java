package com.onlinebazzar.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onlinebazzar.model.Person;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.model.WebUser;
import com.onlinebazzar.services.PersonService;
import com.onlinebazzar.services.VendorService;
import com.onlinebazzar.services.WebUserService;

@Controller
public class VendorController {
	
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
	WebUserService webuserService;

	@RequestMapping(value = "/vendorPanel", method = RequestMethod.GET)
    public String showAdminPanel(Model model) {
        
        return "vendor/vendorpanel";
    }
	
@RequestMapping(value="/vendor/", method=RequestMethod.POST)
public String saveVendor(@ModelAttribute("vendor") @Valid Vendor vendor, 
		BindingResult result, HttpServletRequest request, Locale locale){	
	
		if (result.hasErrors()) {
			return "vendorRegistration";
		}
		
	vendorService.save(vendor);
		//after the custmer service implimentation created
	return "home";
	}

@RequestMapping(value="/vendor/vusers", method=RequestMethod.GET)
public String getVendorUsers(Model model){
	
	List<Person> vusers = personService.findAllVendorPersons();
	model.addAttribute("vuser", new Person());
	model.addAttribute("vusers", vusers);
	return "vendor/vadmin";
	}




@RequestMapping(value="/vendor/user/add", method=RequestMethod.GET)
public String showVendorUser(Model model){
	
	List<String> enumValues = new ArrayList<String>();
	enumValues.add("VMANAGER");
	enumValues.add("VOPERATOR");
	model.addAttribute("enumValues", enumValues);	
	model.addAttribute("vuser", new Person());
	return "vendor/vuserregistration";
	}

//@RequestMapping(value="/vendor/user/add", method=RequestMethod.POST)
//public String addVendorUser(@ModelAttribute("vendor") @Valid Person p, BindingResult result){
//	
//		
//	if (result.hasErrors()) {
//		return "redirect:vendor/vendorRegister";
//	}
//	
//    if(p.getId() == null){
//    	
//        
//        personService.save(p);
//        
//    }else{
//        personService.update(p);
//    }
//	return "vendor/vadmin";
//	}

@RequestMapping(value="/vendor/enableWebuser/{id}", method=RequestMethod.GET)
public String enableWebUser(@PathVariable("id") Long id, Model model){
	webuserService.enable(id);
	List<Person> vusers = personService.findAllVendorPersons();
	model.addAttribute("vuser", new Person());
	model.addAttribute("vusers", vusers);
	return "vendor/vadmin";
	}
}
	

