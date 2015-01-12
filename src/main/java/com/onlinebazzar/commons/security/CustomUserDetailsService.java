package com.onlinebazzar.commons.security;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.onlinebazzar.dao.WebUserDAO;
import com.onlinebazzar.model.WebUser;

/**
 * User details service which is going to plug in to the spring security
 * 
 * @author Amila
 *
 */
@Service("customUserDetailsService")
@Transactional
@SessionAttributes({ "shoppingCart"})
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	WebUserDAO webUserDAO;

	@Override
	public UserDetails loadUserByUsername(String authentication)
			throws UsernameNotFoundException {
		CustomUserDetails customUserData = new CustomUserDetails();
		WebUser user = webUserDAO.findOneByUserName(authentication);	
		
		if (user != null) {
			if(!user.isEnabled())
				return null;
			customUserData.setAuthentication(true);
			customUserData.setId(user.getId().toString());
			customUserData.setUserName(user.getUsername());
			customUserData.setPassword(user.getPassword());
			Collection<CustomRole> roles = new ArrayList<CustomRole>();
			/*for (String role : user.getRoles()) {
				CustomRole customRole = new CustomRole();
				customRole.setAuthority(role);
				roles.add(customRole);
			}*/
			CustomRole customRole = new CustomRole();
			customRole.setAuthority(user.getRole());
			roles.add(customRole);
			customUserData.setAuthorities(roles);
			return customUserData;
		} else {
			return null;
		}
	}

}
