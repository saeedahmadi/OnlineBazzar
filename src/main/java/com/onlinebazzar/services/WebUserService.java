package com.onlinebazzar.services;

import java.util.Locale;

import com.onlinebazzar.commons.exception.ExceptionResourceAlredyExist;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.WebUser;

public interface WebUserService extends GenericService<WebUser>{
	
	public WebUser getUserByID(Long id);

	public WebUser getUserByUserName(String userName);

	public WebUser saveUser(WebUser user, Locale locale) throws ExceptionResourceAlredyExist;

	public void deleteUser(WebUser user);

	void enable(Long id);

	public void updateUser(WebUser user);

	public void updateUserByPasswordRecovery(String id);
}
