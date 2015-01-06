/*package com.onlinebazzar.controller;

import java.util.Iterator;
import java.util.List;
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
import com.onlinebazzar.model.LineItem;
import com.onlinebazzar.model.Order;
import com.onlinebazzar.model.PaymentDetails;
import com.onlinebazzar.model.ShoppingCart;
import com.onlinebazzar.model.Transaction;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.paymentgt.restfulclient.RestClient;
import com.onlinebazzar.services.CustomerService;
import com.onlinebazzar.services.OrderService;
import com.onlinebazzar.services.PaymentDetailsService;
import com.onlinebazzar.services.TransactionService;
import com.onlinebazzar.services.VendorService;

@Controller
@SessionAttributes({"shoppingCart", "user", "order"})
public class PaymentGatewayController {

	@Autowired
	public PaymentDetailsService paymentDetailService;

	@Autowired
	public OrderService orderService;
	
	@Autowired
	public CustomerService customerService;
	
	@Autowired
	public VendorService vendorService;
	
	@Autowired
	public TransactionService transactionService;
	
	@RequestMapping("/paymentInput")
	public String paymentDetails(Model model, HttpServletRequest request) {
		if(!model.containsAttribute("user")){
			
			model.addAttribute("customer", new Customer());
			return "customer/getGuestInformation";
		}
		
		Customer cust = (Customer) request.getSession().getAttribute("user");
		
		model.addAttribute("paymentDetails", cust.getPaymentDetails().get(0));
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
		
		if (result.hasErrors()) {
			return "/paymentDetails";
		}
				
		//Web service for payment gateway to check the balance and card number
		int paymentgatewayResult = RestClient.validateCC(paymentDetails.getCardNumber(), shoppingCart.getPrice());
		System.out.println(paymentgatewayResult);
		if(paymentgatewayResult == 1){
			currentUser.getPaymentDetails().add(paymentDetails);
			
			Order order = new Order();
			order.setPrice(shoppingCart.getPrice());
			order.setItems(shoppingCart.getItems());
			order.setCustomer(currentUser);
			orderService.save(order);
			
			model.addAttribute("order", order);
			
			return "confirmPayment";
		}
		return "redirect:/HomePage";
	}
	
	@RequestMapping(value = "/confirmPayment")
	public String confirmPayment(Model model,@ModelAttribute("order")Order order, @ModelAttribute("shoppingCart") ShoppingCart shoppingCart){	
		
//		//calculate the bazzar benefit and call the finance.com web service
//		List<LineItem> lineItems = shoppingCart.getItems();
//		Iterator<LineItem> it = lineItems.iterator();
//		while(it.hasNext()){
//			LineItem item = it.next();
//			Vendor vendor = item.getProduct().getVendor();
//						
//			double bazzarBenefit =   (item.getProduct().getBazzarBenefit() / 100) * item.getPrice();
//			
//			//connect with the web service here send the information
//			Transaction transaction = new Transaction();
//						
//			transactionService.save(transaction);
//			model.addAttribute("order", new Order());
//		}
		
		model.addAttribute("shoppingCart", new ShoppingCart());
		return "redirect:/HomePage";
	}
}
*/