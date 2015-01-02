package com.onlinebazzar.daoimpl;

import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.AddressDAO;
import com.onlinebazzar.model.Address;


@Repository("addressDAO")

public class AddressDAOImpl extends GenericDAOImpl<Address> implements AddressDAO {
	
}
