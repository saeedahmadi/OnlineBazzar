package com.onlinebazzar.test;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.onlinebazzar.commons.AccountType;
import com.onlinebazzar.commons.Role;
import com.onlinebazzar.model.Address;
import com.onlinebazzar.model.BankAccount;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Customer;
import com.onlinebazzar.model.Person;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.model.WebUser;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/com/onlinebazzar/test/root-context.xml")
public class TestBase {
	private static Category globalCategory;
	private static Category category;

	public static Category getGlobalCategory() {
		if (globalCategory == null) {
			globalCategory = createOneNewCategory("test");
		}
		return globalCategory;
	}

	public static Category getCategory() {
		if (category == null) {
			category = createOneNewCategory("test");
			
		}
		return category;

	}

	

	protected static Category createOneNewCategory(String string) {
		Category category = new Category();
		
		category.setName(string);
		
		
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
	protected static Customer createOneNewCustomer() {
		Customer p = new Customer();
		String random = RandomData.randomName("Customer");
		
    	p.setFirstName(random);
    	p.setLastName(random);
    	p.setEmail("test@onlinebazzar.com");
    	p.setPhoneNumber(RandomData.randomName(random));
    	p.setAddress(createOneNewAddress());
    	WebUser webuser = createOneNewWebUser(Role.CUSTOMER);
    	webuser.setUsername("customer");
    	webuser.setPassword("customer");
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
	protected static Person createOneNewVendorAdmin(Vendor v) {
		Person p = new Person();
		String random = RandomData.randomName("Person");
		
    	p.setFirstName(random);
    	p.setLastName(random);
    	p.setEmail("test@onlinebazzar.com");
    	p.setPhoneNumber(RandomData.randomName(random));
    	p.setAddress(createOneNewAddress());
    	
    	p.setWebuser(createOneNewWebUser(Role.VADMIN));
    	p.setVendor(v);
		
		
		return p;
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


	public static Vendor createOneNewVendor(String vendorNames) {
		// TODO Auto-generated method stub
		Vendor vendor = new Vendor();
		String random = vendorNames;
		vendor.setName(random);
		vendor.setEmail("test@gmail.com");
		vendor.setPhoneNumber("1111111111");
		vendor.setAddress(createOneNewAddress());
		vendor.setBankAccount(createOneNewBankAccount());
		return vendor;
	}

	public static BankAccount createOneNewBankAccount() {
		// TODO Auto-generated method stub
		BankAccount bankAccount = new BankAccount();
		String random = RandomData.randomName("BankAccount");
		bankAccount.setAccountNumber("11111111111111"+RandomData.randomId());
		bankAccount.setBankAddress(createOneNewAddress());
		bankAccount.setOwnerName(random);
		bankAccount.setType(AccountType.CHECKING);
		return bankAccount;
	}

	public static WebUser createOneNewWebUser(Role role) {
		// TODO Auto-generated method stub
		WebUser user = new WebUser();
    	user.setRole(role);
    	String random = RandomData.randomName("Admin");
    	user.setUsername(random);
    	user.setPassword(random);
    	return user;
	}

	public static Product createOneNewProduct(Category category, Vendor vendor) {
		// TODO Auto-generated method stub
		
		String random = RandomData.randomName(category.getName());
		Product product = new Product();
		product.setCategory(category);;
		product.setName(random);
		product.setPrice(100);
		product.setProductDetails("Description "+random);
		product.setVendor(vendor);
		product.setQuantity(10);
		
		
		return product;
	}

	@Test
	public void testEmpty() {
		// do nothing
	}
}