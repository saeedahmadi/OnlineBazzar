package com.onlinebazzar.emailservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;

import com.onlinebazzar.commons.MailMail;
import com.onlinebazzar.model.Person;

public class Notification {
	@Autowired
	static
	MailMail mail;	
	
	@Async
	public static void notifyVendorAdmin(Person p){
		String msg="";
		msg=("Dear "+p.getFirstName()+" ( "+p.getLastName()+" )"+ ", thank you for using our service!\n"
	    		+ "Please use the link below to activate your account.\n");
		msg+="<a href='http://localhost:8080/onlinebazzar/validateRegister/"+p.getWebuser().getPasswordRecovery()+">"+"Activate"+"</a>";
		msg+="Your Account Details are:\nUsername: "+p.getWebuser().getUsername()+"\nPassword: "+p.getWebuser().getPassword();
		msg+="\nWarm Regards,\nOnline Bazzar Team";
		mail.sendMail("testmeluck@gmail.com",
				p.getEmail(),
				"OnlineBazzar Activatioin", 
				msg);
	}

}
