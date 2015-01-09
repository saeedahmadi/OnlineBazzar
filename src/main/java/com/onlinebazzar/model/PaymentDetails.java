package com.onlinebazzar.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import com.onlinebazzar.commons.CardType;
import com.onlinebazzar.encryption.EncryptDecryptStringWithDES;


@Entity
public class PaymentDetails implements Serializable{
	
	@Id
	@GeneratedValue
	private Long id;
	
	private String ownerName;
	
	//@Size(min = 16, max = 16, message = "Card number should be of 16 digits.")
	private String cardNumber;
	
	private CardType type;
	
	@DateTimeFormat(iso = ISO.DATE)
	private Date exipryDate;
	
    //@Size(min = 3, max = 3, message = "CVV must be 3 digits.")
	private int cvv;
	@OneToOne(cascade = CascadeType.ALL)
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
		if(cardNumber!=null)
		return EncryptDecryptStringWithDES.decrypt(cardNumber);
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber =EncryptDecryptStringWithDES.encrypt(cardNumber); 
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
