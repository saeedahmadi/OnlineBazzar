package com.onlinebazzar.model;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import com.onlinebazzar.commons.AcctType;

public class Transaction {

	@Id
	@GeneratedValue
	private Long id;
	private String acct;
	private AcctType type;
	private double amount;
	private Long orderId; 
	private String transactionId;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAcct() {
		return acct;
	}
	public void setAcct(String acct) {
		this.acct = acct;
	}
	public AcctType getType() {
		return type;
	}
	public void setType(AcctType type) {
		this.type = type;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public Long getOrderId() {
		return orderId;
	}
	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}
	public String getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}
	
	
}
