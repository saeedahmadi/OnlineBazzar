package com.onlinebazzar.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.dao.VendorDAO;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.services.VendorService;



@Service("vendorService")

public class VendorServiceImpl extends GenericServiceImpl<Vendor> implements VendorService{
	
		@Autowired
		@Qualifier("vendorDAO")
		public VendorDAO vendorDAO;

		@Override
		protected GenericDAO getDAO() {
			return vendorDAO;
		}

	}

