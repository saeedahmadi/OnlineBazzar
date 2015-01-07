package com.onlinebazzar.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.commons.AccountType;
import com.onlinebazzar.commons.MailMail;
import com.onlinebazzar.commons.Role;
import com.onlinebazzar.model.Address;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Person;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.model.WebUser;
import com.onlinebazzar.services.AddressService;
import com.onlinebazzar.services.CategoryService;
import com.onlinebazzar.services.PersonService;
import com.onlinebazzar.services.VendorService;
import com.onlinebazzar.services.WebUserService;
import com.onlinebazzar.emailservice.Notification;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("user")
public class AdminController {

	@Autowired
	AddressService addressService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	VendorService vendorService;
	@Autowired
	WebUserService webuserService;
	@Autowired
	PersonService personService;
	@Autowired
	MailMail mail;	

	private static final Logger logger = LoggerFactory
			.getLogger(AdminController.class);

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
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "admin/index";
	}

	@RequestMapping(value = "/adminPanel", method = RequestMethod.GET)
	public String showAdminPanel(Model model) {

		return "admin/adminpanel";
	}

	@RequestMapping(value = "/admin/edit", method = RequestMethod.GET)
	public String editAdminProfile(HttpServletRequest request, Model model) {
		//WebUser webuser = (WebUser) session.getAttribute("user");
		WebUser webuser = (WebUser) request.getSession().getAttribute("user");
		Person person = webuser.getPerson();
		System.out.println(person.getId());
		model.addAttribute("currentAdmin", person);
		return "admin/adminEditProfile";
	}
	
	@RequestMapping(value = "/admin/editProfile", method = RequestMethod.POST)
	public String editAdmin(@ModelAttribute("currentAdmin") @Valid Person person,
			BindingResult result, HttpServletRequest request, Locale locale) {
		System.out.println(person.getFirstName());
		if (result.hasErrors()) {
			return "redirect:/";
		}
		personService.update(person);
		return "redirect:/";
	}

	@RequestMapping(value = "/admin/categories", method = RequestMethod.GET)
	public String listCategories(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categories", categoryService.findAll());
		return "admin/index";
	}

	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category c) {
		System.out.println(c);
		if (c.getId() == null) {

			categoryService.save(c);
		} else {
			categoryService.update(c);
		}

		return "redirect:/categories";

	}

	@RequestMapping("/edit/{id}")
	public String editCategory(@PathVariable("id") Long id, Model model) {
		model.addAttribute("category", this.categoryService.findOne(id));
		model.addAttribute("categories", this.categoryService.findAll());
		return "admin/index";
	}

	@RequestMapping("/remove/{id}")
	public String deleteCategory(@PathVariable("id") Long id, Model model) {
		categoryService.deleteById(id);
		model.addAttribute("category", new Category());
		model.addAttribute("categories", this.categoryService.findAll());
		return "admin/index";
	}

	@RequestMapping(value = "/admin/vendors", method = RequestMethod.GET)
	public String listVendors(Model model) {
		model.addAttribute("vendor", new Vendor());
		model.addAttribute("vendors", vendorService.findAll());
		return "admin/vendors";
	}

	/**
	 * @RequestMapping(value="/vendor", method=RequestMethod.POST) public String
	 *                                  saveVendor(@ModelAttribute("vendor") @Valid
	 *                                  Vendor vendor, BindingResult result,
	 *                                  HttpServletRequest request, Locale
	 *                                  locale){
	 * 
	 * 
	 *                                  if (result.hasErrors()) { return
	 *                                  "vendorRegistration"; }
	 * 
	 *                                  vendorService.save(vendor); //after the
	 *                                  custmer service implimentation created
	 *                                  return "home"; }
	 **/

	@RequestMapping(value = "/admin/vendorRegister", method = RequestMethod.GET)
	public String createVendorForm(Model model) {
		List<String> enumValues = new ArrayList<String>();
		enumValues.add("CHECKING");
		enumValues.add("Saving");
		model.addAttribute("enumValues", enumValues);
		model.addAttribute("vendor", new Vendor());
		return "admin/vendorRegistration";
	}

	@RequestMapping(value = "/vendors/add", method = RequestMethod.POST)
	public String addVendor(@ModelAttribute("vendor") @Valid Vendor v,
			BindingResult result) {

		if (result.hasErrors()) {
			return "redirect:/vendorRegister";
		}

		System.out.println(v);
		if (v.getId() == null) {
			v = vendorService.update(v);
			Person p = createVendorAdmin(v);
			personService.save(p);
			
			notifyVendorAdmin(p);
			//Notification.notifyVendorAdmin(p);
			
			
		} else {
			vendorService.update(v);
		}

		return "redirect:/vendors";

	}

	private Person createVendorAdmin(Vendor v) {
		Person p = new Person();
		p.setFirstName(v.getName());
		p.setLastName(v.getName());
		p.setEmail(v.getEmail());
		p.setPhoneNumber(v.getPhoneNumber());
		p.setAddress(v.getAddress());

		WebUser user = new WebUser();
		user.setRole(Role.VADMIN);
		user.setUsername(v.getName());
		user.setPassword(v.getName() + "123");
		p.setWebuser(user);
		p.setVendor(v);
		return p;

	}

	@RequestMapping("/vendors/edit/{id}")
	public String editVendor(@PathVariable("id") Long id, Model model) {
		model.addAttribute("vendor", this.vendorService.findOne(id));
		model.addAttribute("vendors", this.vendorService.findAll());
		return "admin/vendors";
	}

	@RequestMapping("/vendors/remove/{id}")
	public String deleteVendor(@PathVariable("id") Long id, Model model) {
		vendorService.deleteById(id);
		model.addAttribute("vendor", new Vendor());
		model.addAttribute("vendors", this.vendorService.findAll());
		return "admin/vendors";
	}

	@RequestMapping(value = "/admin/webusers", method = RequestMethod.GET)
	public String listWebusers(Model model) {
		model.addAttribute("webuser", new WebUser());
		model.addAttribute("webusers", webuserService.findAll());
		return "admin/webusers";
	}

	@RequestMapping(value = "/webusers/add", method = RequestMethod.POST)
	public String addWebuser(@ModelAttribute("webuser") WebUser v) {
		System.out.println(v);
		if (v.getId() == null) {

			webuserService.save(v);
		} else {
			webuserService.update(v);
		}

		return "redirect:/webusers";

	}

	@RequestMapping("/webusers/edit/{id}")
	public String editWebUser(@PathVariable("id") Long id, Model model) {
		model.addAttribute("webuser", this.webuserService.findOne(id));
		model.addAttribute("webuser", this.webuserService.findAll());
		return "admin/webusers";
	}

	@RequestMapping("/webusers/remove/{id}")
	public String deleteWebuser(@PathVariable("id") Long id, Model model) {
		webuserService.deleteById(id);
		model.addAttribute("webuser", new WebUser());
		model.addAttribute("webuser", this.webuserService.findAll());
		return "admin/webusers";
	}
	
	@Async
	private void notifyVendorAdmin(Person p){
		String msg="";
		msg=("Dear "+p.getFirstName()+" ( "+p.getLastName()+" )"+ ", thank you for using our service!\n"
	    		+ "Please use the link below to activate your account.\n");
		msg+="<a href='http://localhost:8080/onlinebazzar/validateRegister/"+p.getWebuser().getPasswordRecovery()+">"+"Activate"+"</a>";
		msg+="Your Account Details are:\nUsername: "+p.getWebuser().getUsername()+"\nPassword: "+p.getWebuser().getPassword();
		msg+="\nWarm Regards,\nOnline Bazzar Team";
		mail.sendMail("testmeluck@gmail.com",
				p.getEmail(),
				"OnlineBazzar Activatioin", 
				msg);
	}
}
