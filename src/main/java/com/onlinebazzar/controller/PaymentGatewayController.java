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
import com.onlinebazzar.model.PaymentDetails;
import com.onlinebazzar.model.ShoppingCart;
import com.onlinebazzar.services.PaymentDetailsService;

@Controller
@SessionAttributes("shoppingCart")
public class PaymentGatewayController {

	@Autowired
	public PaymentDetailsService paymentDetailService;

	@RequestMapping("/paymentInput")
	public String paymentDetails(Model model) {
		System.out.println("i am here:::");
		model.addAttribute("paymentDetails", new PaymentDetails());
		model.addAttribute("card", CardType.values());
		return "paymentDetails";
	}

	@RequestMapping(value = "/paymentDetails", method = RequestMethod.POST)
	public String savePaymentDetail(
			@ModelAttribute("paymentDetails") @Valid PaymentDetails paymentDetails,
			BindingResult result, HttpServletRequest request, Locale locale,
			Model model,
			@ModelAttribute("shoppingCart") ShoppingCart shoppingCart) {

		if (result.hasErrors()) {
			return "/paymentDetails";
		}
		// paymentDetailService.save(paymentDetails);
		return "confirmPayment";
	}
}
