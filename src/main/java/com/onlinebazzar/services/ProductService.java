package com.onlinebazzar.services;

import java.util.List;

import com.onlinebazzar.model.Product;

public interface ProductService extends GenericService<Product>{

	List<Product> findByName(String name);
}
