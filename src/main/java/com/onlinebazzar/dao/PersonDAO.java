package com.onlinebazzar.dao;

import java.util.List;

import com.onlinebazzar.model.Person;

public interface PersonDAO extends GenericDAO<Person> {

	List<Person> findAllVendorPersons(Long id);
	List<Person> findAllWebUserPersons(Long id);
	
	

}
