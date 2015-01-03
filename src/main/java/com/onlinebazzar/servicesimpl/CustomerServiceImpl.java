package com.onlinebazzar.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.CategoryDAO;
import com.onlinebazzar.dao.CustomerDAO;
import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Customer;
import com.onlinebazzar.services.CategoryService;
import com.onlinebazzar.services.CustomerService;



@Service("customerService")

public class CustomerServiceImpl extends GenericServiceImpl<Customer> implements CustomerService{
	
		@Autowired
		@Qualifier("customerDAO")
		public CustomerDAO categoryDAO;

		@Override
		protected GenericDAO getDAO() {
			return categoryDAO;
		}

	}

