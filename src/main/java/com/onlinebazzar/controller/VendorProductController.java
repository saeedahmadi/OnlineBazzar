package com.onlinebazzar.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.model.WebUser;
import com.onlinebazzar.services.CategoryService;
import com.onlinebazzar.services.ProductService;
import com.onlinebazzar.services.VendorService;

@Controller
@Scope("session")
@SessionAttributes("user")
public class VendorProductController {

	/**
	 * Handle login page request
	 * 
	 * @return
	 */
	@Autowired
	private CategoryService catagoryservice;
	@Autowired
	private ProductService productService;
	@Autowired
	VendorService vendorService;


	@RequestMapping(value = "/allProducts", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("products", productService.findAll());
		return "vendor/viewProducts";
	}

	@RequestMapping(value = "/vendor/product/add", method = RequestMethod.GET)
	public String vendorAddProduct(Model model, HttpServletRequest request) {

		List<Category> category = new ArrayList<Category>();
		category = catagoryservice.findAll();
		List<Vendor> vendors = new ArrayList<Vendor>();
		WebUser webUser =  (WebUser) request.getSession().getAttribute("user");
		Vendor vendor = vendorService.findOne(webUser.getPerson().getVendor().getId());
		List<Vendor> tvendors= vendorService.findAll();
		vendors = new ArrayList<Vendor>();
		for(int i =0;i<tvendors.size();i++){
			if(tvendors.get(i).getName().equals(vendor.getName())){
				vendors.add(tvendors.get(i));
				break;
			}
			
		}
		model.addAttribute("category", category);
		model.addAttribute("vendors", vendors);
		model.addAttribute("newProduct", new Product());

		return "vendor/addproduct";
	}

	@RequestMapping(value = "/vendor/product/addproducts", method = RequestMethod.POST)
	public String processAddNewProductForm(
			@ModelAttribute("newProduct") @Valid Product product,
			BindingResult result, HttpServletRequest request, Locale locale,
			Model model) {
		if (result.hasErrors()) {
			return "vendor/addproduct";
		}

		
		
		MultipartFile productImage = product.getProductImage();
		String rootDirectory = request.getServletContext().getRealPath("/")+
				"\\resources\\images\\";
		
		System.out.println("im"+rootDirectory);
		
	
		if (productImage != null && !productImage.isEmpty()) {
			try {
				productImage.transferTo(new File(rootDirectory
						+ product.getName() + ".jpg"));
		/*MultipartFile productImage = product.getProductImage();
		String rootDirectory = request.getSession().getServletContext()
				.getRealPath("/");

		if (productImage != null && !productImage.isEmpty()) {
			try {
				productImage.transferTo(new File(rootDirectory
						+ "resources\\images\\" + product.getName() + ".png"));*/

			} catch (Exception e) {
				throw new RuntimeException("Product Image saving failed", e);
			}
		}

		productService.save(product);

		return "redirect:/vendor/managedProducts";
	}

	@RequestMapping(value = "/vendor/managedProducts", method = RequestMethod.GET)
	public String listProducts(Model model, HttpServletRequest request) {
		model.addAttribute("product", new Product());
		WebUser webUser =  (WebUser) request.getSession().getAttribute("user");
		model.addAttribute("products", productService.findByVendor(webUser.getPerson().getVendor().getId()));
		return "vendor/manageProducts";
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product p,HttpServletRequest request) {
		// System.out.println(v);
		WebUser webUser =  (WebUser) request.getSession().getAttribute("user");
		Vendor vendor = vendorService.findOne(webUser.getPerson().getVendor().getId());
		
		//p.getVendor().setId(vendor.getId());
		productService.update(p);
		//vendorService.save(vendor);
		return "redirect:/vendor/managedProducts";

	}

	@RequestMapping("/vendor/products/edit/{id}")
	public String editProduct(@PathVariable("id") Long id, Model model) {
		
		Product product = productService.findOne(id);
		
		model.addAttribute("product", product);
		model.addAttribute("category",catagoryservice.findAll());
		return "vendor/editProduct";
	}



	@RequestMapping("/vendor/products/remove/{id}")
	public String deleteProduct(@PathVariable("id") Long id, Model model) {
		productService.deleteById(id);
		model.addAttribute("product", new Product());
		model.addAttribute("products", this.productService.findAll());
		return "redirect:/vendor/managedProducts";
	}

}
