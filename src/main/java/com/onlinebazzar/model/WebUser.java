package com.onlinebazzar.model;

import java.io.Serializable;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.onlinebazzar.commons.Role;

@Entity
public class WebUser implements Serializable{

	@Id
	@GeneratedValue
	private Long id;
	@NotNull
	private String username;
	
	@NotNull @Size(min = 6, max = 15)
	private String password;
	@Transient
	private boolean status;
	
	private boolean enabled;
	
	private String passwordRecovery;
	
	private Role role;
	
	
	
	@OneToOne
	private Person person;
	
	public WebUser() {
		// TODO Auto-generated constructor stub
		passwordRecovery = UUID.randomUUID().toString();
	}
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	public String getPasswordRecovery() {
		return passwordRecovery;
	}
	public void setPasswordRecovery(String passwordRecovery) {
		this.passwordRecovery = passwordRecovery;
	}
	
	
}
