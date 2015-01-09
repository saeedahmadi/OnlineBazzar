package com.onlinebazzar.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Vendor {
	@Id
	@GeneratedValue
	private Long id;

	private String name;

	private String phoneNumber;
	private String email;

	@OneToMany
	@JoinColumn(name = "vendor_id")
	private List<Category> categories;
	
	@OneToMany(mappedBy = "vendor",cascade = CascadeType.ALL)
	
	private List<Product> products;
	
	@OneToOne(cascade = CascadeType.ALL)
	private BankAccount bankAccount;

	@OneToOne(cascade = CascadeType.ALL)
	private Address address;
	
	private double bazzarProfit;

	public Vendor() {
		this.bazzarProfit = 10;
		categories        = new ArrayList<Category>();
	}

	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public BankAccount getBankAccount() {
		return bankAccount;
	}

	public void setBankAccount(BankAccount bankAccount) {
		this.bankAccount = bankAccount;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public List<Product> getProducts() {
		return products;
	}


	public void setProducts(List<Product> products) {
		this.products = products;
	}


	public double getBazzarProfit() {
		return bazzarProfit;
	}

	public void setBazzarProfit(double bazzarProfit) {
		this.bazzarProfit = bazzarProfit;
	}
	
	

}
