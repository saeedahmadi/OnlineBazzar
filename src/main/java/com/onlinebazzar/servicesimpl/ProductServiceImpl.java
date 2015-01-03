package com.onlinebazzar.servicesimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.dao.ProductDAO;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.services.ProductService;

@Service("productService")
public class ProductServiceImpl extends GenericServiceImpl<Product> implements ProductService{

	@Autowired
	@Qualifier("productDAO")
	public ProductDAO productDAO;
	
	@Override
	protected GenericDAO getDAO() {
		// TODO Auto-generated method stub
		return productDAO;
	}

	@Override
	public List<Product> findByName(String name) {
		// TODO Auto-generated method stub
		return productDAO.findByName(name);
	}

}
