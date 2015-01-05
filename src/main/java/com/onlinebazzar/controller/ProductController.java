package com.onlinebazzar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.model.LineItem;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.ShoppingCart;
import com.onlinebazzar.services.ProductService;

@Controller
@SessionAttributes("shoppingCart")
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
		System.out.println("name:: " + name);
		List<Product> searchResult = productService.findByName(name);
		model.addAttribute("productList",searchResult);
 		return "searchresult";
	}
	
	@RequestMapping("/product/addtocart/{id}")
	public String addToCart(@PathVariable("id") Long id, Model model, HttpServletRequest request, @ModelAttribute ShoppingCart shoppingCart){
		Product product = productService.findOne(id);
		LineItem item = new LineItem();
		item.setProduct(product);
		shoppingCart.addCartItem(item);
		model.addAttribute("shoppingCart",shoppingCart);
		System.out.println(shoppingCart.getPrice());
 		return "HomePage";
	}
}
