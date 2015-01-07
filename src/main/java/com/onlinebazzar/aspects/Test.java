package com.onlinebazzar.aspects;



import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.onlinebazzar.model.Address;

public class Test {
public static void main(String[] args) {
	 ApplicationContext context =
             new ClassPathXmlApplicationContext("root-context.xml");
	 		Address employee = (Address) context.getBean("testBean");
	 		employee.getCity();
}
}
