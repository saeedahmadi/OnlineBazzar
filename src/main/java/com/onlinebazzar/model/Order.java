package com.onlinebazzar.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.onlinebazzar.commons.OrderStatus;

@Entity(name="COrder")
public class Order {
	@Id
	@GeneratedValue
	private Long id;
	@OneToMany
	@JoinColumn(name="order_id")
	private List<LineItem> items;
	private double price;
	private Date creationDate;
	@ManyToOne
	@JoinColumn
	private Customer customer;
	private OrderStatus status;
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public OrderStatus getStatus() {
		return status;
	}
	public void setStatus(OrderStatus status) {
		this.status = status;
	}
	
	
	
	
}
