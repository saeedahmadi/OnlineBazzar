package com.onlinebazzar.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import com.onlinebazzar.commons.AccountType;
import com.onlinebazzar.encryption.EncryptDecryptStringWithDES;


@Entity
public class BankAccount {

	@Id
	@GeneratedValue
	private Long id;
	
	private String ownerName;
	private String accountNumber;
	private AccountType type;
	@OneToOne(cascade=CascadeType.ALL)
	private Address bankAddress;
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
	public String getAccountNumber() {
		
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber =EncryptDecryptStringWithDES.encrypt(accountNumber);
	}
	public AccountType getType() {
		return type;
	}
	public void setType(AccountType type) {
		this.type = type;
	}
	public Address getBankAddress() {
		return bankAddress;
	}
	public void setBankAddress(Address bankAddress) {
		this.bankAddress = bankAddress;
	}
	
	
}
