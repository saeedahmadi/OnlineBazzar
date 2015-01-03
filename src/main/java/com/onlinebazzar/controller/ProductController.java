package com.onlinebazzar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.onlinebazzar.dao.ProductDAO;
import com.onlinebazzar.model.Product;
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
	public String productSearchResult(Model model, @RequestParam String name){
		List<Product> searchResult = productService.findByName(name);
		System.out.println("count ::::::::::" + searchResult.size());
		model.addAttribute("productList",searchResult);
 		return "Product";
	}
}
