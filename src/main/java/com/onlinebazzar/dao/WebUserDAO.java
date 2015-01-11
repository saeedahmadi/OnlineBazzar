package com.onlinebazzar.dao;

import java.util.List;

import com.onlinebazzar.model.WebUser;

public interface WebUserDAO extends GenericDAO<WebUser>{
	WebUser findOneByUserName(String username);

	void enable(Long id);

	void updateUserByPasswordRecovery(String id);

	List<WebUser> findPendingUsers();
}
