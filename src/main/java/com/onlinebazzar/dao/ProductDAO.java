package com.onlinebazzar.dao;

import java.util.List;

import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.Vendor;

public interface ProductDAO extends GenericDAO<Product>{

	List<Product> findByName(String name);
	List<Product> findByVendorAndCategoryName(Long vid, Long cid);
	List<Product> findByCategory(Long id);
	List<Product> findDiscountProduct();
	List<Product> findByVendor(Long id);
}
