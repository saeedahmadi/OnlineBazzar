package com.onlinebazzar.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.CategoryDAO;
import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.dao.WebUserDAO;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.WebUser;
import com.onlinebazzar.services.CategoryService;
import com.onlinebazzar.services.WebUserService;



@Service("webuserService")

public class WebuserServiceImpl extends GenericServiceImpl<WebUser> implements WebUserService{
	
		@Autowired
		@Qualifier("webuserDAO")
		public WebUserDAO webUserDAO;

		@Override
		protected GenericDAO getDAO() {
			return webUserDAO;
		}

	}

