package com.onlinebazzar.services;

import java.util.List;

import com.onlinebazzar.model.Person;

public interface PersonService extends GenericService<Person>{
	
	public List<Person> findAllVendorPersons(Long long1);
	
	public List<Person> findAllWebUserPersons(Long long1);

}
