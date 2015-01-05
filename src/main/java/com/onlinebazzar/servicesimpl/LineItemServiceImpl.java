package com.onlinebazzar.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.dao.LineItemDAO;
import com.onlinebazzar.model.LineItem;

@Service("lineItemService")
public class LineItemServiceImpl extends GenericServiceImpl<LineItem>{

	@Autowired
	@Qualifier("lineItemDAO")
	public LineItemDAO lineItemDAO;
	
	@Override
	protected GenericDAO getDAO() {
		// TODO Auto-generated method stub
		return lineItemDAO;
	}

}
