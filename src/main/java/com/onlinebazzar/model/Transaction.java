package com.onlinebazzar.model;

import java.io.Serializable;
import java.util.Date;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import com.onlinebazzar.commons.CardType;
import com.onlinebazzar.commons.EntryType;

@Entity
public class Transaction implements Serializable {
	private static final long serialVersionUID = -7788619177798333712L;

	@Id
	@GeneratedValue
	private Long id;
	private Date transactionDate;

	private Long orderId;
	private String accountNumber;
	private CardType type;

	private String accountCompany;
	private EntryType entryType;
	private double price;

	private String transactionId;

	public Transaction() {
		this.transactionDate = new Date();
		this.setTransactionId(UUID.randomUUID().toString());
	}

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public CardType getType() {
		return type;
	}

	public void setType(CardType type) {
		this.type = type;
	}

	public String getAccountCompany() {
		return accountCompany;
	}

	public void setAccountCompany(String accountCompany) {
		this.accountCompany = accountCompany;
	}

	public EntryType getEntryType() {
		return entryType;
	}

	public void setEntryType(EntryType entryType) {
		this.entryType = entryType;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}

	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

}
