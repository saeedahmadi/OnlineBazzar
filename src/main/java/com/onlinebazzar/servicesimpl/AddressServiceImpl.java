package com.onlinebazzar.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.AddressDAO;
import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.model.Address;
import com.onlinebazzar.services.AddressService;



@Service("addressService")

public class AddressServiceImpl extends GenericServiceImpl<Address> implements AddressService{
	
		@Autowired
		@Qualifier("addressDAO")
		public AddressDAO addressDAO;

		@Override
		protected GenericDAO getDAO() {
			return addressDAO;
		}

	}

