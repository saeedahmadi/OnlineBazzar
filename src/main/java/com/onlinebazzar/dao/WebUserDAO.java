package com.onlinebazzar.dao;

import com.onlinebazzar.model.WebUser;

public interface WebUserDAO extends GenericDAO<WebUser>{
	WebUser findOneByUserName(String username);

	void enable(Long id);
}
