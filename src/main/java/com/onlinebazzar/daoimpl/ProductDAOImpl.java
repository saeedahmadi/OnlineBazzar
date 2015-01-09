package com.onlinebazzar.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.ProductDAO;
import com.onlinebazzar.model.Category;
import com.onlinebazzar.model.Product;
import com.onlinebazzar.model.Vendor;

@Repository("productDAO")
public class ProductDAOImpl extends GenericDAOImpl<Product> implements
		ProductDAO {

	@Override
	public List<Product> findByName(String name) {
		Query query = getCurrentSession().createQuery(
				"from Product p where name LIKE :name");
		query.setString("name", name + "%");
		List<Product> productList = query.list();
		return productList;
	}

	@Override
	public List<Product> findByVendorAndCategoryName(Long vid, Long cid) {

		Query query = getCurrentSession()
				.createQuery(
						"from Product p where p.vendor.id =:vid and p.category.id =:cid");

		query.setParameter("vid", vid);
		query.setParameter("cid", cid);
		List<Product> productList = query.list();
		return productList;
	}

	@Override
	public List<Product> findByCategory(Long id) {
		Query query = getCurrentSession().createQuery(
				"from Product p where p.category.id =:id");

		query.setParameter("id", id);
		List<Product> productList = query.list();
		return productList;
	}

	@Override
	public List<Product> findDiscountProduct() {
		int value = 0;
		Query query = getCurrentSession().createQuery(
				"from Product p where onSale > 0");
		List<Product> productList = query.list();
		return productList;
	}

	@Override
	public List<Product> findByVendor(Long id) {
		Query query = getCurrentSession().createQuery(
				"from Product p where p.vendor.id =:id");

		query.setParameter("id", id);
		List<Product> productList = query.list();
		return productList;
	}
}
