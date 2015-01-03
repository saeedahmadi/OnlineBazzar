package com.onlinebazzar.utilities;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.scheduling.annotation.Async;

import com.onlinebazzar.commons.MailMail;



public class EmailNotification {	
	
	@Async
	private void notifyCustomer(String email,String code){
		ApplicationContext context = 
	             new ClassPathXmlApplicationContext("root-context.xml");
	 
	    	MailMail mm = (MailMail) context.getBean("mailMail");
	    	
	        mm.sendMail("mumyogastudio@gmail.com",
	    		   email,
	    		   "Yoga Account Activatioin", 
	    		   "<a href='http://localhost:8080/studio/validateRegister/id="+code);
	 
	}
	
	//use this method whenever you want to send email confirmation to a customer
	
	//notifyCustomer(tuser.getEmail(),tuser.getActivationId());

}
