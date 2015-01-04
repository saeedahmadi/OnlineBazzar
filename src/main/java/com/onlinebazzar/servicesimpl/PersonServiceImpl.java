package com.onlinebazzar.servicesimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.CustomerDAO;
import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.dao.PersonDAO;
import com.onlinebazzar.model.Customer;
import com.onlinebazzar.model.Person;
import com.onlinebazzar.services.CustomerService;
import com.onlinebazzar.services.PersonService;

@Service("personService")
public class PersonServiceImpl extends GenericServiceImpl<Person> implements
		PersonService {

	@Autowired
	@Qualifier("personDAO")
	public PersonDAO personDAO;

	@Override
	protected GenericDAO getDAO() {
		return personDAO;
	}

	@Override
	public List<Person> findAllVendorPersons() {
		// TODO Auto-generated method stub
		return personDAO.findAllVendorPersons();
	}

}
