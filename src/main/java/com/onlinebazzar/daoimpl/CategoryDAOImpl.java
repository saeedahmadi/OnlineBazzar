package com.onlinebazzar.daoimpl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.onlinebazzar.dao.CategoryDAO;
import com.onlinebazzar.model.Category;


@Repository("categoryDAO")
public class CategoryDAOImpl extends GenericDAOImpl<Category> implements CategoryDAO {
	
	public CategoryDAOImpl(){
	      setClazz(Category.class );
	   }
	
}
