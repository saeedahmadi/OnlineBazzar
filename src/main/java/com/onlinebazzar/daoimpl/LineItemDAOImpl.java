package com.onlinebazzar.daoimpl;

import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.LineItemDAO;
import com.onlinebazzar.model.LineItem;

@Repository("lineItemDAO")
public class LineItemDAOImpl extends GenericDAOImpl<LineItem> implements LineItemDAO{

	public LineItemDAOImpl() {
		setClazz(LineItem.class);
	}
}
