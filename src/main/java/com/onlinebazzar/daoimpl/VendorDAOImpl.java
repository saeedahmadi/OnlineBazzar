package com.onlinebazzar.daoimpl;

import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.VendorDAO;
import com.onlinebazzar.model.Vendor;


@Repository("vendorDAO")
public class VendorDAOImpl extends GenericDAOImpl<Vendor> implements VendorDAO {
	
	public VendorDAOImpl(){
	      setClazz(Vendor.class );
	   }
	
}
