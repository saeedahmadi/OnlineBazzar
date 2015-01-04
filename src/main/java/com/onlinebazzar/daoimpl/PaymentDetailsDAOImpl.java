package com.onlinebazzar.daoimpl;

import org.springframework.stereotype.Repository;

import com.onlinebazzar.dao.PaymentDetailsDAO;
import com.onlinebazzar.model.PaymentDetails;

@Repository("paymentDetailsDAO")
public class PaymentDetailsDAOImpl extends GenericDAOImpl<PaymentDetails>
		implements PaymentDetailsDAO {

	public PaymentDetailsDAOImpl() {

		setClazz(PaymentDetails.class);

	}
}
