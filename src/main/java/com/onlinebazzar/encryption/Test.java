package com.onlinebazzar.encryption;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Test {
	
	
	public static void main(String[] args) {
		try {

			for (int i=1; i<10;i++){
				String str = i+""+i+""+i+""+i+i+""+i+""+i+""+i+i+""+i+""+i+""+i+i+""+i+""+i+""+i;
				System.out.println(encrypt(str));
				
			}
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

public static String   encrypt(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException{
        
        String passwordToHash = str;
        String generatedPassword = null;
        try {
            // Create MessageDigest instance for MD5
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            //Add password bytes to digest
            md.update(passwordToHash.getBytes());
            //Get the hash's bytes
            byte[] bytes = md.digest();
            //This bytes[] has bytes in decimal format;
            //Convert it to hexadecimal format
            StringBuilder sb = new StringBuilder();
            for(int i=0; i< bytes.length ;i++)
            {
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            //Get complete hashed password in hex format
            generatedPassword = sb.toString();
           return generatedPassword;
        }
        catch (NoSuchAlgorithmException e)
        {
            e.printStackTrace();
        }
        System.out.println(generatedPassword);
        return null;
    }
}
