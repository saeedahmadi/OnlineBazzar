package com.onlinebazzar.model;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Category  {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	private String name;
	
	
	
	@OneToMany( cascade = CascadeType.ALL)
	@JoinColumn
	private List<Category> subCategories;
	@OneToMany(mappedBy = "category", cascade = CascadeType.ALL)
	private List<Product> products;
	
	public Category() {
		this.products = new ArrayList<Product>();
	}
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Category> getSubCategories() {
		return subCategories;
	}
	public void setSubCategories(List<Category> subCategories) {
		this.subCategories = subCategories;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
	
	

}
