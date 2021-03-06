package com.onlinebazzar.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.commons.Role;
import com.onlinebazzar.encryption.EncryptDecryptStringWithDES;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Customer;
import com.onlinebazzar.model.LineItem;
import com.onlinebazzar.model.Person;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.ShoppingCart;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.services.CategoryService;
import com.onlinebazzar.services.CustomerService;
import com.onlinebazzar.services.ProductService;
import com.onlinebazzar.services.VendorService;
import com.onlinebazzar.model.WebUser;
import com.onlinebazzar.services.WebUserService;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes({ "user", "shoppingCart", "vendorList", "categoryList" })
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;

	@Autowired
	VendorService vendorService;

	@Autowired
	WebUserService webUserService;
	
	@Autowired
	CustomerService customerService;

	/**
	 * Handle the home request and place view according to the user type
	 * 
	 * @return
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String clientHome(HttpServletRequest request, Model model) {

		if (!model.containsAttribute("shoppingCart"))
			model.addAttribute("shoppingCart", new ShoppingCart());
		Object principal = SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			String username = ((UserDetails) principal).getUsername();
			WebUser user = webUserService.getUserByUserName(username);

			if (user.getRole().equals(Role.ADMIN)) {
				// model.addAttribute("category", new Category());
				request.getSession().setAttribute("user", user);
				return "redirect:/adminPanel";
			}

			if (user.getRole().equals(Role.CUSTOMER)) {
				Customer customer = (Customer) user.getPerson();
				request.getSession().setAttribute("user", customer);
				customer = customerService.findOne(customer.getId());
				ShoppingCart shoppingCart =
						(ShoppingCart) request.getSession().getAttribute("shoppingCart");
				ShoppingCart sc =customer.getShoppingCart();
				
				//lazy loading
				if(sc!=null){
					for (int i = 0; i < sc.getItems().size(); i++) {
						sc.getItems().get(i).getProduct().getName();
					}
					
					for(int i=0;i<sc.getItems().size();i++){
						shoppingCart.addCartItem(sc.getItems().get(i));
					
					}
				}
				customer.setShoppingCart(shoppingCart);
				customer = customerService.update(customer);
				
				model.addAttribute("shoppingCart", customer.getShoppingCart());
				
				
				
			}

			if (user.getRole().equals(Role.VADMIN)) {
				// model.addAttribute("category", new Category());
				request.getSession().setAttribute("user", user);
				return "redirect:/vendorPanel";
			}

		}

		List<Product> searchResult = productService.findAll();
		model.addAttribute("productList", searchResult);

		List<Vendor> vendorList = vendorService.findAll();
		model.addAttribute("vendorList", vendorList);

		List<Category> categoryList = categoryService.findAll();
		model.addAttribute("categoryList", categoryList);

		// discount products
		List<Product> discountProducts = productService.findDiscountProduct();
		System.out.println(discountProducts.size());
		model.addAttribute("discountProductList", discountProducts);
		
		Map<Category, List<Vendor>> categoryWithVendors = new HashMap<Category, List<Vendor>>();
		for(int i = 0; i< categoryList.size(); i++){
			Category cat = categoryList.get(i);
			List<Vendor> vList = new ArrayList<Vendor>();
			for(int j = 0;j< vendorList.size() ; j++){
				Vendor v = vendorList.get(j);
				if(v.getCategories().contains(cat)){
					vList.add(v);
				}
			}
			categoryWithVendors.put(cat, vList);
		}
		model.addAttribute("categoryVendorList", categoryWithVendors);
		
//		System.out.println(categoryWithVendors.size());
//		for (Map.Entry<Category, List<Vendor>> entry : categoryWithVendors.entrySet()) {
//			Category c = entry.getKey();
//			System.out.println("cat name ::" + c.getName() );
//			List<Vendor> vlist = entry.getValue();
//			for(int i = 0; i< vlist.size(); i++){
//				Vendor v = vlist.get(i);
//				System.out.println("Vendor ::" + v.getName());
//			}
//		}
		
		return "redirect:/HomePage";

	}

	/**
	 * Return index page
	 * 
	 * @return
	 */
	@RequestMapping(value = "/HomePage", method = RequestMethod.GET)
	public String index() {
		return "/HomePage";
	}
	
	@RequestMapping(value = "/HomePageReload", method = RequestMethod.GET)
	public String indexReload(@ModelAttribute("orderFailed") boolean order) {
		return "/HomePage";
	}

	@RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
	public String detailsSearchResult(Model model, @ModelAttribute("id") Long id) {

		Product product = productService.findOne(id);
		model.addAttribute("product", product);
		Category category = categoryService.findOne(product.getCategory()
				.getId());

		List<Product> searchResult = category.getProducts();

		Iterator<Product> it = searchResult.iterator();

		while (it.hasNext()) {
			Product p = (Product) it.next();
			if (p.getId() == id)
				it.remove();
		}
		model.addAttribute("productList", searchResult);
		return "details";
	}
}
