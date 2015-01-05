package com.onlinebazzar.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.dao.ShoppingCartDAO;
import com.onlinebazzar.model.ShoppingCart;

@Service("shoppingCartService")
public class ShoppingCartServiceImpl extends GenericServiceImpl<ShoppingCart>{

	@Autowired
	@Qualifier("shoppingCartDAO")
	public ShoppingCartDAO shoppingCart;
	
	@Override
	protected GenericDAO getDAO() {
		// TODO Auto-generated method stub
		return shoppingCart;
	}

}
