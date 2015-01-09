package com.onlinebazzar.services.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Person;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.services.CategoryService;



public class CategoryServiceImplTest  extends ServiceImplTestBase{
	
	@Autowired
	public CategoryService categoryService;

	@Test
	@Transactional
	public void testSaveCategory() {
		String categoryNames [] = new String[5];
		categoryNames[0]="Shoes";
		categoryNames[1]="Watches";
		categoryNames[2]="Ties";
		categoryNames[3]="Pants";
		categoryNames[4]="Shirts";
		
		String vendorNames [] = new String[5];
		vendorNames[0]="Nike";
		vendorNames[1]="Rolex";
		vendorNames[2]="Macy";
		vendorNames[3]="Levis";
		vendorNames[4]="Calvin Clark";
		
		personService.save(createOneNewAdmin());
		customerService.save(createOneNewCustomer());
		for(int i=0;i<categoryNames.length;i++){
			Category c = createOneNewCategory(categoryNames[i]);
			c = categoryService.save(c);
			
			Vendor v = createOneNewVendor(vendorNames[i]);
			
			v = vendorService.save(v);
			Person person = createOneNewVendorAdmin(v);
			personService.save(person);
			
			for(int j=1; j<=5;j++){
				Product p = createOneNewProduct(c,v);
				productService.save(p);
			}
		}
		
	}
	
	/*@Test
	@Transactional
	public void testSaveCategory() {
		Category c = createOneNewCategory();
		c = categoryService.save(c);
		Category c2 = categoryService.findOne(c.getId());
		assertNotNull(c.getId());
		assertEquals(c.getId(), c2.getId());
		//customerService.deleteCustomer(c2.getId());
		//Customer c3 = customerService.getCustomer(c.getId());
		//assertNull(c3);
	}*/

	/*@Test
	@Transactional
	public void testListCustomer() {
		List<Category> categoryList = categoryService.findAll();
		Category c = createOneNewCategory();
		c = categoryService.save(c);
		List<Category> cList = categoryService.findAll();
		assertEquals(cList.size(), categoryList.size()+1);
	}*/

}
