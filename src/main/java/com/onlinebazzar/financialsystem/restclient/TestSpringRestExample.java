package com.onlinebazzar.financialsystem.restclient;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
 




import java.util.Map;

import net.minidev.json.JSONObject;

import org.springframework.web.client.RestTemplate;

import com.onlinebazzar.model.*;


 

 
public class TestSpringRestExample {
 
    public static final String SERVER_URI = "http://localhost:8080/SpringRestExample";
    
    String test = "http://localhost:8080/SpringRestExample/postTransactions";
     
    public static void main(String args[]){
         
        //testGetAllEmployee();
        testPostTransaction();
    }
 
    private static void testGetAllEmployee() {
        RestTemplate restTemplate = new RestTemplate();
        //we can't get List<Employee> because JSON convertor doesn't know the type of
        //object in the list and hence convert it to default JSON object type LinkedHashMap
        List<LinkedHashMap> trans = restTemplate.getForObject(SERVER_URI+"/transactions", List.class);
        System.out.println(trans.size());
        for(LinkedHashMap map : trans){
            System.out.println("ID="+map.get("id")+",Name="+map.get("price"));;
        }
    }
    

    private static void testPostTransaction() {
        RestTemplate restTemplate = new RestTemplate();
        //we can't get List<Employee> because JSON convertor doesn't know the type of
        //object in the list and hence convert it to default JSON object type LinkedHashMap
        Map<String, String> vars = new HashMap<String, String>();
        
        List<Transaction> txs = new ArrayList<Transaction>();
		for(int i=0;i<10;i++){
			
			txs.add(new Transaction());
		}
		
		Transaction t = new Transaction();
        Transaction trans = restTemplate.postForObject(SERVER_URI+"/postTransaction", t,Transaction.class);
        
       
    }
 
   
}