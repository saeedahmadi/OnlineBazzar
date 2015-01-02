package com.onlinebazzar.commons.security;

import org.springframework.security.core.GrantedAuthority;

import com.onlinebazzar.commons.Role;

/**
 * Custom role class for manage the authorities
 * 
 * @author Amila
 *
 */
public class CustomRole implements GrantedAuthority {
	String role = null;
	
	public String getAuthority() {
		return role;
	}

	public void setAuthority(Role roleInput) {
		switch(roleInput){
		case ADMIN:
			role = SecurityConstant.ROLE_ADMIN;
			break;
		case CUSTOMER:
			role = SecurityConstant.ROLE_CUSTOMER;
			break;
		case MANAGER:
			role = SecurityConstant.ROLE_MANAGER;
			break;
		case VADMIN:
			role = SecurityConstant.ROLE_VADMIN;
			break;
		case VMANAGER:
			role = SecurityConstant.ROLE_VMANAGER;
			break;
		case VOPERATOR:
			role = SecurityConstant.ROLE_VOPERATOR;
			break;
		default:
			role = "N/A";
			break;
		
		}
	}

}
