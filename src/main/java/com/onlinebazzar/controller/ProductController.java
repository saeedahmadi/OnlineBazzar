package com.onlinebazzar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.onlinebazzar.model.LineItem;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.ShoppingCart;
import com.onlinebazzar.services.ProductService;

@Controller
public class ProductController {

	@Autowired
	@Qualifier("productService")
	ProductService productService;
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String productSearch(){
		
		return "Product";
	}
	
	@RequestMapping(value = "/productSearch", method = RequestMethod.POST)
	public String productSearchResult(Model model, @RequestParam String name,HttpServletRequest request){
		List<Product> searchResult = productService.findByName(name);
		System.out.println("count ::::::::::" + searchResult.size());
		model.addAttribute("productList",searchResult);
		//request.getSession().setAttribute("shoppingCart", new ShoppingCart());
		//model.addAttribute("shoppingCart", new ShoppingCart());
 		return "Product";
	}
	
	@RequestMapping("/product/addtocart/{id}")
	public String addToCart(@PathVariable("id") Long id, Model model,HttpSession session){
		Product product = productService.findOne(id);
		LineItem item = new LineItem();
		item.setProduct(product);
		//ShoppingCart shoppingCart = (ShoppingCart)session.getAttribute("shoppingCart");
		ShoppingCart shoppingCart = new ShoppingCart();
		shoppingCart.getItems().add(item);
		model.addAttribute("shoppingCart",shoppingCart);
 		return "shoppingcart";
	}
}
