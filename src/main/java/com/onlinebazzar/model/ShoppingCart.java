package com.onlinebazzar.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;


@Entity
public class ShoppingCart implements Serializable{

	@Id
	@GeneratedValue
	private Long id;
	
	@OneToMany
	@JoinColumn(name="shoppingcart_id")
	private List<LineItem> items;
	private Date creationDate;
	private double price;
	
	public ShoppingCart() {
		this.items        = new ArrayList<LineItem>();
		this.creationDate = new Date();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public List<LineItem> getItems() {
		return items;
	}
	public void setItems(List<LineItem> items) {
		this.items = items;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public double getPrice() {
		Iterator<LineItem> it = items.iterator();

		while (it.hasNext()) {
			LineItem item = it.next();
			price = price + item.getPrice();
		}
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public void addCartItem(LineItem item) {
		Long productId = item.getProduct().getId();
		boolean isItemFound = false;
		
		Iterator<LineItem> it = items.iterator();
		while(it.hasNext()){
			LineItem currentLineItem = it.next();
			if(productId == currentLineItem.getProduct().getId()){
				currentLineItem.setQuantity(currentLineItem.getQuantity() + 1);
				isItemFound = true;
				break;
			}
		}
		if(!isItemFound){
			items.add(item);
		}
		updateGrandTotal();
		
	}
	
	public void removeCartItem(LineItem item) {
		items.remove(item);
		updateGrandTotal();
	}
	
	public void updateGrandTotal() {
		double totalPrice = 0D;
		Iterator<LineItem> it = items.iterator();
		while(it.hasNext()){
			LineItem currentLineItem = it.next();
			totalPrice = totalPrice + currentLineItem.getPrice();
		}
		
		this.price = totalPrice;
	}
	
	
}
