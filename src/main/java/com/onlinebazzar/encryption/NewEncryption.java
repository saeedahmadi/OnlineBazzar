package com.onlinebazzar.encryption;


import java.security.Key;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;

public class NewEncryption {


		public final static  String base ="onlinebazzaronlinebazzaronlinebazzar";


	    public String  encrypt(String str){
	    	str+=base;
	    	 byte[] encoded = Base64.encodeBase64(str.getBytes());   
	    	 
	    	
	    	 return new String(encoded);
	    }
	    
	    public String  decrypt(String str){
	    		byte[] encoded = Base64.decodeBase64(str);
	    	 return new String(encoded);
	    	 
	    }
	    
	    

	    public static void main(String[] args) {
	       NewEncryption app = new NewEncryption();
	       String enc = app.encrypt("abc");
	       String dec = app.decrypt(enc);
	       System.out.println(enc);
	       System.out.println(dec);

	    }
	}

