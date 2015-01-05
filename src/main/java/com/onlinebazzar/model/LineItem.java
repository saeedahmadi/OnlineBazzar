package com.onlinebazzar.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class LineItem  implements Serializable{
	@Id
	@GeneratedValue
	private Long id;
	
	@OneToOne
	private Product product;
	private int quantity;
	private double price;
	
	public LineItem() {
		this.quantity = 1;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
		updateTotalPrice();
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
		updateTotalPrice();
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	
	public void updateTotalPrice() {
		double totalPrice = 0D;
		totalPrice        = this.product.getPrice() * this.quantity;
		this.price        = totalPrice;
	}

}
