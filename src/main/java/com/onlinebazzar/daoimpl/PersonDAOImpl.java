package com.onlinebazzar.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.CustomerDAO;
import com.onlinebazzar.dao.PersonDAO;
import com.onlinebazzar.model.Customer;
import com.onlinebazzar.model.Person;
import com.onlinebazzar.model.Product;

@Repository("personDAO")
public class PersonDAOImpl extends GenericDAOImpl<Person> implements
	PersonDAO {
	public PersonDAOImpl() {
		setClazz(Person.class);
	}

	@Override
	public List<Person> findAllVendorPersons() {
		// TODO Auto-generated method stub
		
		Query query = getCurrentSession().createQuery("from Person p where p.webuser.enabled = 0 AND (p.webuser.role=2 OR p.webuser.role=3 OR p.webuser.role=4) ");
		List<Person> personList = query.list();
		return personList;
	}
}
