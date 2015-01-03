package com.onlinebazzar.daoimpl;

import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.AddressDAO;
import com.onlinebazzar.dao.CustomerDAO;
import com.onlinebazzar.model.Address;
import com.onlinebazzar.model.Customer;


@Repository("customerDAO")

public class CustomerDAOImpl extends GenericDAOImpl<Customer> implements CustomerDAO {
	
}
