/*package com.onlinebazzar.services.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Person;
import com.onlinebazzar.services.CategoryService;



public class PersonServiceImplTest  extends ServiceImplTestBase{
	
	

	@Test
	@Transactional
	public void testSavePerson() {
		Person c = createOneNewPerson();
		c = personService.save(c);
		Person c2 = personService.findOne(c.getId());
		assertNotNull(c.getId());
		assertEquals(c.getId(), c2.getId());
		personService.deleteById(c2.getId());
		Person c3 = personService.findOne(c.getId());
		assertNull(c3);
	}
	
	@Test
	@Transactional
	public void testSaveAdmin() {
		Person c = createOneNewAdmin();
		c = personService.save(c);
		Person c2 = personService.findOne(c.getId());
		assertNotNull(c.getId());
		assertEquals(c.getId(), c2.getId());
		//personService.deleteById(c2.getId());
		//Customer c3 = customerService.getCustomer(c.getId());
		//assertNull(c3);
	}
	
	@Test
	@Transactional
	public void testSaveVendorAdmin() {
		Person c = createOneNewVendorAdmin();
		c = personService.save(c);
		Person c2 = personService.findOne(c.getId());
		assertNotNull(c.getId());
		assertEquals(c.getId(), c2.getId());
		//personService.deleteById(c2.getId());
		//Customer c3 = customerService.getCustomer(c.getId());
		//assertNull(c3);
	}

	@Test
	@Transactional
	public void testListPerson() {
		List<Person> categoryList = personService.findAll();
		Person c = createOneNewPerson();
		c = personService.save(c);
		List<Person> cList = personService.findAll();
		assertEquals(cList.size(), categoryList.size()+1);
	}

}
*/