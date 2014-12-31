package com.onlinebazzar.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import com.onlinebazzar.commons.CardType;

@Entity
public class PaymentDetails {
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String ownerName;
	private String cardNumber;
	private CardType type;
	private Date exipryDate;
	private int cvv;
	@OneToOne
	private Address billingAddress;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public CardType getType() {
		return type;
	}
	public void setType(CardType type) {
		this.type = type;
	}
	public Date getExipryDate() {
		return exipryDate;
	}
	public void setExipryDate(Date exipryDate) {
		this.exipryDate = exipryDate;
	}
	public int getCvv() {
		return cvv;
	}
	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	public Address getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(Address billingAddress) {
		this.billingAddress = billingAddress;
	}
	
	
	

}
