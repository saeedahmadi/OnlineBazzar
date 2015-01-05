package com.onlinebazzar.daoimpl;

import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.TransactionDAO;
import com.onlinebazzar.model.Transaction;

@Repository("transactionDAO")
public class TransactionDAOImpl extends GenericDAOImpl<Transaction> implements TransactionDAO{

	public TransactionDAOImpl() {
		setClazz(Transaction.class);
	}
}
