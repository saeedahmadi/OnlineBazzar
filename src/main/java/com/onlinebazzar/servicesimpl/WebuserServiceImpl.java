package com.onlinebazzar.servicesimpl;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.commons.exception.ExceptionResourceAlredyExist;
import com.onlinebazzar.dao.CategoryDAO;
import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.dao.WebUserDAO;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.WebUser;
import com.onlinebazzar.services.CategoryService;
import com.onlinebazzar.services.WebUserService;



@Service("webuserService")

public class WebuserServiceImpl extends GenericServiceImpl<WebUser> implements WebUserService{
	
	private final String exceptionUserAlreadyEsist = "exception.username.save.alreadyExist";
	
	@Autowired
	WebUserDAO webUserDAO;

	@Override
	protected GenericDAO getDAO() {
		return webUserDAO;
	}

	@Override
	public WebUser getUserByID(Long id) {
		return webUserDAO.findOne(id);
	}

	@Override
	public WebUser getUserByUserName(String userName) {
		return webUserDAO.findOneByUserName(userName);
	}

	@Override
	public WebUser saveUser(WebUser user, Locale locale)
			throws ExceptionResourceAlredyExist {
		return null;
	}

	@Override
	public void deleteUser(WebUser user) {
		webUserDAO.delete(user);
	}

		@Override
		public void enable(Long id) {
			// TODO Auto-generated method stub
			webUserDAO.enable(id);
			
		}

	@Override
	public void updateUser(WebUser user) {
		
	}

	@Override
	public void updateUserByPasswordRecovery(String id) {
		// TODO Auto-generated method stub
		webUserDAO.updateUserByPasswordRecovery(id);
	}
	}

