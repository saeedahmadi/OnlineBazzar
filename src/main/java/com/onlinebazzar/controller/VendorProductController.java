package com.onlinebazzar.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Customer;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.model.WebUser;
import com.onlinebazzar.services.CategoryService;
import com.onlinebazzar.services.CustomerService;
import com.onlinebazzar.services.ProductService;

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

	
	
	@RequestMapping(value = "/allProducts", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("products", productService.findAll());
		return "vendor/viewProducts";
	}
	
	
	@RequestMapping(value = "/vendor/product/add", method = RequestMethod.GET)
	public String vendorAddProduct(Model model) {


		List<Category> category =  new ArrayList<Category>();
		category=catagoryservice.findAll();
		model.addAttribute("category", category);

		model.addAttribute("newProduct",new Product());

		return "vendor/addproduct";
	}


	@RequestMapping(value = "/vendor/product/addproducts", method =RequestMethod.POST)
	public String processAddNewProductForm(@ModelAttribute("newProduct") @Valid Product product, BindingResult result, HttpServletRequest request,Locale locale,Model model) {
		if(result.hasErrors()) {
			return "vendor/addproduct";
		}


		MultipartFile productImage = product.getProductImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");

		if (productImage!=null && !productImage.isEmpty()) {
			try {
				productImage.transferTo(new File(rootDirectory+"resources\\images\\"+product.getName() + ".png"));

			} catch (Exception e) {
				throw new RuntimeException("Product Image saving failed", e);
			}
		}


		productService.save(product);

		return "home";
	}
	
	
	
	
	@RequestMapping(value = "/vendor/managedProducts", method = RequestMethod.GET)
    public String listProducts(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("products", productService.findAll());
        return "vendor/manageProducts";
    }
	 
	     
    @RequestMapping(value= "/product/add", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("product") Product p){
        //System.out.println(v);
        if(p.getId() == null){
        	
        	productService.save(p);
        }else{
        	productService.update(p);
        }
         
        return "home";
         
    }

    
   @RequestMapping("/products/edit/{id}")
    public String editProduct(@PathVariable("id") Long id, Model model){
	   
	   Product product = this.productService.findOne(id);
        model.addAttribute("product", product);
        
        return "vendor/editProduct";
    }	
   
/*   @RequestMapping(value="/admin/vendor/product/edit", method = RequestMethod.GET)
	public String showProductEdit(Model model, @RequestParam("pid") String productId, HttpServletRequest request){				
		
		int id = Integer.parseInt(productId);
		model.addAttribute("product",productService.getProductById(id));
		model.addAttribute("categories", categoryService.listCategories());	
		return "/admin/vendor/product_edit";
	}*/
    
    @RequestMapping("/products/remove/{id}")
    public String deleteProduct(@PathVariable("id") Long id, Model model){
    	productService.deleteById(id);
        model.addAttribute("product", new Product());
        model.addAttribute("products", this.productService.findAll());
        return "vendor/manageProducts";
    }
    
}
