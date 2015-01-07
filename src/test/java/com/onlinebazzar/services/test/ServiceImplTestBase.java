package com.onlinebazzar.services.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.transaction.TransactionConfiguration;

import com.onlinebazzar.services.CategoryService;
import com.onlinebazzar.services.PersonService;
import com.onlinebazzar.test.TestBase;



@TransactionConfiguration(defaultRollback = false, transactionManager = "transactionManager")
public class ServiceImplTestBase extends TestBase {
	@Autowired
	@Qualifier("categoryService")
	protected CategoryService categoryService;
	
	@Autowired
	@Qualifier("personService")
	protected PersonService personService;
	
	
}