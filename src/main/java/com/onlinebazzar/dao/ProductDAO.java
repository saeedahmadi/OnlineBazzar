package com.onlinebazzar.dao;

import java.util.List;

import com.onlinebazzar.model.Product;

public interface ProductDAO extends GenericDAO<Product>{

	List<Product> findByName(String name);
}
