package com.onlinebazzar.daoimpl;

import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.OrderDAO;
import com.onlinebazzar.model.Order;

@Repository("orderDAO")
public class OrderDAOImpl extends GenericDAOImpl<Order> implements OrderDAO{

}
