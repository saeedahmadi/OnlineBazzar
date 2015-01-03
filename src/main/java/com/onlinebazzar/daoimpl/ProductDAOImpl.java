package com.onlinebazzar.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.ProductDAO;
import com.onlinebazzar.model.Product;

@Repository("productDAO")
public class ProductDAOImpl extends GenericDAOImpl<Product> implements ProductDAO{
	
	@Override
	public List<Product> findByName(String name) {
		Query query = getCurrentSession().createQuery("from Product p where name LIKE :name");
		query.setString("name", name+"%");
		List<Product> productList = query.list();
		return productList;
	}
}
