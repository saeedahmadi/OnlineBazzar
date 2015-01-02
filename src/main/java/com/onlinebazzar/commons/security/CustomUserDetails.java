package com.onlinebazzar.commons.security;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

/**
 * Custom User details which is going to hold the login user's details
 * 
 * @author Amila
 *
 */
public class CustomUserDetails implements UserDetails {

	Collection<? extends GrantedAuthority> list = null;
	String id = null;
	String userName = null;
	String password = null;
	boolean status = false;

	public CustomUserDetails() {
		list = new ArrayList<GrantedAuthority>();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return this.list;
	}

	public void setAuthorities(Collection<? extends GrantedAuthority> roles) {
		this.list = roles;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setAuthentication(boolean status) {
		this.status = status;
	}

	@Override
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String pass) {
		this.password = pass;
	}

	@Override
	public String getUsername() {
		return this.userName;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
