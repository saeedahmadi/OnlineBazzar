package com.onlinebazzar.test;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.onlinebazzar.commons.Role;
import com.onlinebazzar.model.Address;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Customer;
import com.onlinebazzar.model.Person;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.model.WebUser;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:root-context.xml",
		"classpath:servlet-context.xml" })
public class TestBase {
	private static Category globalCategory;
	private static Category category;

	public static Category getGlobalCategory() {
		if (globalCategory == null) {
			globalCategory = createOneNewCategory();
		}
		return globalCategory;
	}

	public static Category getCategory() {
		if (category == null) {
			category = createOneNewCategory();
			
		}
		return category;

	}

	

	protected static Category createOneNewCategory() {
		Category category = new Category();
		
		category.setName(RandomData.randomName("Category"));
		
		return category;
	}

	protected static Person createOneNewPerson() {
		Person p = new Person();
		String random = RandomData.randomName("Person");
		
    	p.setFirstName(random);
    	p.setLastName(random);
    	p.setEmail("test@onlinebazzar.com");
    	p.setPhoneNumber(RandomData.randomName(random));
    	p.setAddress(createOneNewAddress());
    	
    	//p.setWebuser(createOneNewWebUser());
    	//p.setVendor(createOneNewVendor());
		
		
		return p;
	}
	protected static Person createOneNewCustomer() {
		Customer p = new Customer();
		String random = RandomData.randomName("Customer");
		
    	p.setFirstName(random);
    	p.setLastName(random);
    	p.setEmail("test@onlinebazzar.com");
    	p.setPhoneNumber(RandomData.randomName(random));
    	p.setAddress(createOneNewAddress());
    	
    	p.setWebuser(createOneNewWebUser(Role.CUSTOMER));
    	//p.setVendor(createOneNewVendor());
		
		
		return p;
	}
	protected static Person createOneNewAdmin() {
		Person p = new Person();
		String random = RandomData.randomName("Person");
		
    	p.setFirstName(random);
    	p.setLastName(random);
    	p.setEmail("test@onlinebazzar.com");
    	p.setPhoneNumber(RandomData.randomName(random));
    	p.setAddress(createOneNewAddress());
    	
    	p.setWebuser(createOneNewWebUser(Role.ADMIN));
    	//p.setVendor(createOneNewVendor());
		
		
		return p;
	}
	protected static Person createOneNewVendorAdmin() {
		Person p = new Person();
		String random = RandomData.randomName("Person");
		
    	p.setFirstName(random);
    	p.setLastName(random);
    	p.setEmail("test@onlinebazzar.com");
    	p.setPhoneNumber(RandomData.randomName(random));
    	p.setAddress(createOneNewAddress());
    	
    	p.setWebuser(createOneNewWebUser(Role.VADMIN));
    	//p.setVendor(createOneNewVendor());
		
		
		return p;
	}



	private static Vendor createOneNewVendor() {
		// TODO Auto-generated method stub
		return null;
	}

	private static WebUser createOneNewWebUser(Role role) {
		// TODO Auto-generated method stub
		WebUser user = new WebUser();
    	user.setRole(role);
    	String random = RandomData.randomName("Admin");
    	user.setUsername(random);
    	user.setPassword(random);
    	return user;
	}

	private static Address createOneNewAddress() {
		// TODO Auto-generated method stub
		
		String random = RandomData.randomName("Address");
		Address address = new Address();
		address.setCity(random);
		address.setCountry(random);
		address.setState(random);
		address.setStreet(random);
		address.setZip("55555");
		
		
		return address;
	}

	@Test
	public void testEmpty() {
		// do nothing
	}
}