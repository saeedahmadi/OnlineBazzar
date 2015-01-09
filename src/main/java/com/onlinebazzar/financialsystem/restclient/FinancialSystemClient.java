package com.onlinebazzar.financialsystem.restclient;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.scheduling.annotation.Async;
import org.springframework.web.client.RestTemplate;

import com.onlinebazzar.model.Transaction;

public class FinancialSystemClient {
//public static final String SERVER_URI = "http://10.10.11.128:8080/SpringRestExample";
public static final String SERVER_URI = "http://10.10.36.162:8080/SpringRestExample";	
    
    String test = "http://localhost:8080/SpringRestExample/postTransactions";
	
	public static void main(String[] args) {
		Transaction tx = new Transaction();
		List<Transaction> txs = new ArrayList<Transaction>();
		for (int i = 0; i < 10; i++) {
			txs.add(new Transaction());
		}
		testPostTransaction(txs);
	}
	
	 @Async
	public
	 static void testPostTransaction(List<Transaction> transactions) {
	        RestTemplate restTemplate = new RestTemplate();
	        //we can't get List<Employee> because JSON convertor doesn't know the type of
	        //object in the list and hence convert it to default JSON object type LinkedHashMap
	    
			for(int i=0;i<transactions.size();i++){
				
				Transaction trans = restTemplate.postForObject(SERVER_URI+"/postTransaction", transactions.get(i),Transaction.class);
			}
			
			
	        
	       
	    }
	 
}
