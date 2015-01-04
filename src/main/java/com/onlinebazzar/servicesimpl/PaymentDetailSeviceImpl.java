package com.onlinebazzar.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.onlinebazzar.dao.GenericDAO;
import com.onlinebazzar.dao.PaymentDetailsDAO;
import com.onlinebazzar.model.PaymentDetails;
import com.onlinebazzar.services.PaymentDetailsService;

@Service("paymentDetailsService")
public class PaymentDetailSeviceImpl extends GenericServiceImpl<PaymentDetails> implements PaymentDetailsService{

	@Autowired
	@Qualifier("paymentDetailsDAO")
	public PaymentDetailsDAO paymentDetailsDAO;
	
	@Override
	protected GenericDAO getDAO() {
		// TODO Auto-generated method stub
		return paymentDetailsDAO;
	}

}
