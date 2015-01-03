package com.onlinebazzar.daoimpl;

import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.CustomerDAO;
import com.onlinebazzar.model.Customer;

@Repository("customerDAO")
public class CustomerDAOImpl extends GenericDAOImpl<Customer> implements
		CustomerDAO {
	public CustomerDAOImpl() {
		setClazz(Customer.class);
	}
}
