package com.onlinebazzar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.model.ShoppingCart;


@Controller
@SessionAttributes("shoppingCart")
public class ShoppingCartController {
		
	@RequestMapping("/shoppingCart")
	public String viewshoppingcart(){
		
 		return "buy";
	}
	
	@RequestMapping(value = "/clearCart", method = RequestMethod.GET)
	public String clearCart(Model model){
		
		model.addAttribute("shoppingCart", new ShoppingCart());
		return "buy";
	}
	
	@RequestMapping(value = "/shoppingCart/delete/{id}")
	public String deleteLineItemWithIdFromCart(@PathVariable("id") int id, @ModelAttribute("shoppingCart") ShoppingCart shoppingCart){
		
		shoppingCart.removeCartItem(shoppingCart.getItems().get(id));
		
		return "buy";
	}
}


