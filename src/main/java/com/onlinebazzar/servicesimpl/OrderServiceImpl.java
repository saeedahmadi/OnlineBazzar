package com.onlinebazzar.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.dao.OrderDAO;
import com.onlinebazzar.model.Order;
import com.onlinebazzar.services.OrderService;

@Service("serviceOrder")
public class OrderServiceImpl extends GenericServiceImpl<Order> implements OrderService{

	@Autowired
	@Qualifier("orderDAO")
	public OrderDAO orderDAO;
	
	
	@Override
	protected GenericDAO getDAO() {
		// TODO Auto-generated method stub
		return orderDAO;
	}

}
