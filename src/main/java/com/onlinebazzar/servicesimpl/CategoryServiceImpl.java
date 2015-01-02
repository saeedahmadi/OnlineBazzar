package com.onlinebazzar.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.CategoryDAO;
import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.services.CategoryService;



@Service("categoryService")

public class CategoryServiceImpl extends GenericServiceImpl<Category> implements CategoryService{
	
		@Autowired
		@Qualifier("categoryDAO")
		public CategoryDAO categoryDAO;

		@Override
		protected GenericDAO getDAO() {
			return categoryDAO;
		}

	}

