package com.onlinebazzar.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Product {
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String name;
	private double price;
	private String descritpion;
	private String url;
	private double bazzarBenefit;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "vendor") 
	private Vendor vendor;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "category") 
	private Category category;
	private Date creationDate;
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getDescritpion() {
		return descritpion;
	}
	public void setDescritpion(String descritpion) {
		this.descritpion = descritpion;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Vendor getVendor() {
		return vendor;
	}
	public void setVendor(Vendor vendor) {
		this.vendor = vendor;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public double getBazzarBenefit() {
		return bazzarBenefit;
	}
	public void setBazzarBenefit(double bazzarBenefit) {
		this.bazzarBenefit = bazzarBenefit;
	}
	
	
	
}
