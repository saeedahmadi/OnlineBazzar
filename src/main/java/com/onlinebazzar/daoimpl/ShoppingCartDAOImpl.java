package com.onlinebazzar.daoimpl;

import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.ShoppingCartDAO;
import com.onlinebazzar.model.ShoppingCart;

@Repository("shoppingCartDAO")
public class ShoppingCartDAOImpl extends GenericDAOImpl<ShoppingCart> implements ShoppingCartDAO{

	public ShoppingCartDAOImpl() {
		setClazz(ShoppingCart.class);
	}
}
