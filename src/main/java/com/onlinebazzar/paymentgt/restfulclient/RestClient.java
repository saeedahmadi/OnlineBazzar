package com.onlinebazzar.paymentgt.restfulclient;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;


public class RestClient {

	
	
	public static int validateCC(String cardno, double totalPrice) {
        
		  	int result=0;
		  	System.out.println("testing"+cardno);
	
	  try{  
	        URL url = new URL(makeURL(cardno, totalPrice));
//	      URLConnection uc = url.openConnection();
	        HttpURLConnection uc = (HttpURLConnection) url.openConnection();

	        uc.setRequestMethod("GET");
	        uc.setDoOutput(true);
	        uc.setRequestProperty( "Content-type", "text/plain" );
	        uc.setRequestProperty( "Accept", "text/plain" );
	   
	        int rspCode = uc.getResponseCode();

	        if (rspCode == 200) {
	            InputStream is = (InputStream) uc.getInputStream();
	            InputStreamReader isr = new InputStreamReader(is);
	            BufferedReader br = new BufferedReader(isr);

	            String nextLine = br.readLine();
	            while (nextLine != null) {
	                result=Integer.parseInt(nextLine);
	                nextLine = br.readLine();
	            }

	        }
	        }

	        catch(IOException e) { 
	            e.printStackTrace();
	        }
	return result;

	    }
	private static String makeURL(String cardNumber, double amount){
        String url = "http://10.10.52.222:8080/PayementService/webresources/com.mycompany."
        		+ "payementservice.accountdetails"
        		+ "/cValidation?cardnumber="+cardNumber+"&totalprice=+"+amount;

		return url;
		
	}
	
	public static void main(String[] args) {
		int result = RestClient.validateCC("3333444455556666", 200);
		System.out.println(result);
	}

}
