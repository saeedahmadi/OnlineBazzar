package com.onlinebazzar.model;


import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.web.multipart.MultipartFile;

import com.onlinebazzar.commons.ProductSize;


@Entity
public class Product implements Serializable  {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Size(min=1	,max=50)
	
	private String name;
	 @Min(1) @Max(999999)
	private double price;
	@Min(0) @Max(99)
	private int onSale;
	
	@NotEmpty
	private String productDetails;
	
	
	@ManyToOne
	@JoinColumn(name = "vendor") 
	private Vendor vendor;

	@ManyToOne
	@JoinColumn(name = "category") 
	private Category category;
	private Date creationDate;
	@Min(1) @Max(1000)
	private int quantity;
	@Transient
	private MultipartFile  productImage;
	
	public Product() {
		this.creationDate = new Date();
		this.quantity     = 1;
	}
	
	public String getProductDetails() {
		return productDetails;
	}
	public void setProductDetails(String productDetails) {
		this.productDetails = productDetails;
	}
	
	public MultipartFile getProductImage() {
		return productImage;
	}
	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
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
	
	public int getOnSale() {
		return onSale;
	}
	public void setOnSale(int onSale) {
		this.onSale = onSale;
	}
	@Override
	public String toString() {
		return "Product [category=" + category + "]";
	}
	
	
}
