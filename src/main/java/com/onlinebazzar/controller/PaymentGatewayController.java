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
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.commons.CardType;
import com.onlinebazzar.model.Customer;
import com.onlinebazzar.model.Order;
import com.onlinebazzar.model.PaymentDetails;
import com.onlinebazzar.model.ShoppingCart;
import com.onlinebazzar.services.CustomerService;
import com.onlinebazzar.services.OrderService;
import com.onlinebazzar.services.PaymentDetailsService;

@Controller
@SessionAttributes({"shoppingCart", "user"})
public class PaymentGatewayController {

	@Autowired
	public PaymentDetailsService paymentDetailService;

	@Autowired
	public OrderService orderService;
	
	@Autowired
	public CustomerService customerService;
	
	@RequestMapping("/paymentInput")
	public String paymentDetails(Model model) {
		if(!model.containsAttribute("user")){
			
			model.addAttribute("customer", new Customer());
			return "customer/getGuestInformation";
		}
		
		model.addAttribute("paymentDetails", new PaymentDetails());
		model.addAttribute("card", CardType.values());
		return "paymentDetails";
	}
	
	@RequestMapping(value = "/registerGuest", method = RequestMethod.POST)
	public String saveCustomer(
			@ModelAttribute("customer") @Valid Customer customer,
			BindingResult result, HttpServletRequest request, Locale locale,Model model) {

		if (result.hasErrors()) {
			return "customer/getGuestInformation";
		}
		
		model.addAttribute("user", customer);
				
		model.addAttribute("paymentDetails", new PaymentDetails());
		model.addAttribute("card", CardType.values());
		return "paymentDetails";
	}

	@RequestMapping(value = "/paymentDetails", method = RequestMethod.POST)
	public String savePaymentDetail(
			@ModelAttribute("paymentDetails") @Valid PaymentDetails paymentDetails,
			BindingResult result, HttpServletRequest request, Locale locale,
			Model model,
			@ModelAttribute("shoppingCart") ShoppingCart shoppingCart,@ModelAttribute("user") Customer currentUser) {

		//web service goes here and if condition is true continue else don't continue
		
		// check condition here
		
		currentUser.getPaymentDetails().add(paymentDetails);
				
		Order order = new Order();
		order.setPrice(shoppingCart.getPrice());
		order.setItems(shoppingCart.getItems());
		order.setCustomer(currentUser);
		orderService.save(order);

		if (result.hasErrors()) {
			return "/paymentDetails";
		}
		return "confirmPayment";
	}
	
	@RequestMapping(value = "/confirm")
	public String confirmPayment(Model model){
		
		model.addAttribute("shoppingCart", new ShoppingCart());
		return "redirect:/HomePage";
	}
}
