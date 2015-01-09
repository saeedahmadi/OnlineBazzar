package com.onlinebazzar.encryption;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;

import com.sun.mail.util.BASE64DecoderStream;
import com.sun.mail.util.BASE64EncoderStream;


public class EncryptDecryptStringWithDES {

	public final static  String base ="onlinebazzaronlinebazzaronlinebazzar";


    public static String  encrypt(String str){
    	//str+=base;
    	 byte[] encoded = Base64.encodeBase64(str.getBytes());   
    	 
    	
    	 return new String(encoded);
    }
    
    public  static String  decrypt(String str){
    		byte[] encoded = Base64.decodeBase64(str);
    	 return new String(encoded);
    	 
    }
    
    public static void main(String[] args) {
    	for (int i=1;i<10;i++){
    		String text = i+""+i+""+i+""+i+i+""+i+""+i+""+i+i+""+i+""+i+""+i+i+""+i+""+i+""+i;
    		//System.out.println(text);
    		//System.out.println(text.length());
    		System.out.println(EncryptDecryptStringWithDES.encrypt(text));
		
    	}
	}
    

}