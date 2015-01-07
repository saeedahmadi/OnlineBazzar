package com.onlinebazzar.services.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.onlinebazzar.model.Category;
import com.onlinebazzar.services.CategoryService;



public class CategoryServiceImplTest  extends ServiceImplTestBase{
	
	@Autowired
	public CategoryService categoryService;

	@Test
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
	}

	@Test
	@Transactional
	public void testListCustomer() {
		List<Category> categoryList = categoryService.findAll();
		Category c = createOneNewCategory();
		c = categoryService.save(c);
		List<Category> cList = categoryService.findAll();
		assertEquals(cList.size(), categoryList.size()+1);
	}

}
