package com.onlinebazzar.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import com.sun.istack.internal.NotNull;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public class Person {

	@Id
	@Column(name = "person_id")
	@GeneratedValue
	private Long id;
	
	@Pattern(regexp= "[a-zA-Z]*",message="First name is not written correctly")
	private String firstName;
	@Pattern(regexp= "[a-zA-Z]*",message="Last name is not written correctly")
	private String lastName;
//	@Pattern(regexp = ""[0-9()-\.]*", message = "Phone should be in 111-111-1111 format")
	private String phoneNumber;

	@Pattern(regexp = "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\."
			+ "[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@"
			+ "(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message = "Email should be in mmm@mmm.mmm format")
	private String email;
	@DateTimeFormat(iso = ISO.DATE)
	private Date dob;
	@OneToOne(cascade = CascadeType.ALL)
	private Address address;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn
	private WebUser webuser;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Vendor vendor;


	public WebUser getWebuser() {
		return webuser;
	}

	public void setWebuser(WebUser webuser) {
		this.webuser = webuser;
		webuser.setPerson(this);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Vendor getVendor() {
		return vendor;
	}

	public void setVendor(Vendor vendor) {
		this.vendor = vendor;
	}
	

}
