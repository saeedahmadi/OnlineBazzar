package com.onlinebazzar.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.model.LineItem;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.ShoppingCart;

@Controller
@SessionAttributes("shoppingCart")
public class ShoppingCartController {
	
	
	@RequestMapping("/shoppingCart")
	
	public String viewshoppingcart(){
		
 		return "buy";
	}
}


