package com.onlinebazzar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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

import com.onlinebazzar.model.Customer;
import com.onlinebazzar.model.LineItem;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.ShoppingCart;
import com.onlinebazzar.services.CategoryService;
import com.onlinebazzar.services.CustomerService;
import com.onlinebazzar.services.ProductService;
import com.onlinebazzar.services.VendorService;

@Controller
@SessionAttributes("shoppingCart")
public class ProductController {

	@Autowired
	@Qualifier("productService")
	ProductService productService;
	
	@Autowired
	VendorService vendorService;
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String productSearch(){
		
		return "Product";
	}
	
	@RequestMapping("/product/vendorCategory/{id}/{cid}")
	public String getProductWithVendorCategory(@PathVariable("id") Long id, Model model,@PathVariable("cid") Long cid){
	
		List<Product> productList = productService.findByVendorAndCategoryName(id, cid);
		model.addAttribute("productList", productList);
 		return "searchresult";
	}
	
	@RequestMapping(value = "/productSearch", method = RequestMethod.POST)
	public String productSearchResult(Model model, @RequestParam String name,HttpServletRequest request){
		System.out.println("name:: " + name);
		List<Product> searchResult = productService.findByName(name);
		model.addAttribute("productList",searchResult);
 		return "searchresult";
	}
	
	@RequestMapping("/product/category/{id}")
	public String getProductWithCategory(@PathVariable("id") Long id, Model model){
	
		List<Product> productList = productService.findByCategory(id);
		model.addAttribute("productList", productList);
 		return "searchresult";
	}
	
	@Autowired
	CustomerService customerSerivce;
	
	
	@RequestMapping("/product/addtocart/{id}")
	public String addToCart(@PathVariable("id") Long id, Model model, HttpServletRequest request, @ModelAttribute ShoppingCart shoppingCart){
		LineItem item = new LineItem();
		Product product = productService.findOne(id);
		item.setProduct(product);
		shoppingCart.addCartItem(item);
		Customer cust = (Customer) request.getSession().getAttribute("user");
		
		if (cust!=null) {
			if(cust.getShoppingCart()==null)
				cust.setShoppingCart(new ShoppingCart());
			cust = customerSerivce.findOne(cust.getId());
			cust.setShoppingCart(shoppingCart);
			//cust.getShoppingCart().setItems(shoppingCart.getItems());
			//cust.getShoppingCart().getItems().add(item);
			customerSerivce.update(cust);
			model.addAttribute("shoppingCart",cust.getShoppingCart());
			return "redirect:/HomePage";
		}
		model.addAttribute("shoppingCart",shoppingCart);
		System.out.println(shoppingCart.getPrice());
 		return "redirect:/HomePage";
	}
}
