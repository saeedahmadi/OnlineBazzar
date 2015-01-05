package com.onlinebazzar.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.dao.TransactionDAO;
import com.onlinebazzar.model.Transaction;
import com.onlinebazzar.services.TransactionService;

@Service("transactionService")
public class TransactionServiceImpl extends GenericServiceImpl<Transaction> implements TransactionService{

	@Autowired
	@Qualifier("transactionDAO")
	public TransactionDAO transactionDAO;
	
	@Override
	protected GenericDAO getDAO() {
		// TODO Auto-generated method stub
		return transactionDAO;
	}

}
