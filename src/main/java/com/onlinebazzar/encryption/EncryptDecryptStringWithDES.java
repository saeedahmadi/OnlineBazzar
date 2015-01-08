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

import com.sun.mail.util.BASE64DecoderStream;
import com.sun.mail.util.BASE64EncoderStream;


public class EncryptDecryptStringWithDES {

	private static Cipher ecipher;
	private static Cipher dcipher;

	private static SecretKey key;

	public static void main(String[] args) {

		try {

			// generate secret key using DES algorithm
			//key = KeyGenerator.getInstance("DES").generateKey();
			 byte[] keyBytes =   new byte[] { 'T', 'h', 'e', 'B', 'e', 's', 't',
					 'S', 'e', 'c', 'r','e', 't', 'K', 'e', 'y' };

				    SecretKey key = new SecretKeySpec(keyBytes, "AES");
			ecipher = Cipher.getInstance("AES");
			dcipher = Cipher.getInstance("AES");

			// initialize the ciphers with the given key

  ecipher.init(Cipher.ENCRYPT_MODE,key);

  dcipher.init(Cipher.DECRYPT_MODE, key);

  String encrypted = encrypt1("This is a classified message!");

  String decrypted = decrypt(encrypted);
  System.out.println("Decrypted: " + encrypted);

  System.out.println("Decrypted: " + decrypted);

		}
		catch (NoSuchAlgorithmException e) {
			System.out.println("No Such Algorithm:" + e.getMessage());
			return;
		}
		catch (NoSuchPaddingException e) {
			System.out.println("No Such Padding:" + e.getMessage());
			return;
		}
		catch (InvalidKeyException e) {
			System.out.println("Invalid Key:" + e.getMessage());
			return;
		}

	}
	
public static String   encrypt(String str) {
        
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

			public static String encrypt1(String str) {
		
		  try {
		
				  	// encode the string into a sequence of bytes using the named charset
				
				  	// storing the result into a new byte array. 
				
				  	byte[] utf8 = str.getBytes("UTF8");
				  	
				  //	key = KeyGenerator.getInstance("DES").generateKey();

					ecipher = Cipher.getInstance("DES");
				  	ecipher.init(Cipher.ENCRYPT_MODE, key);
				  
				
				  	byte[] enc = ecipher.doFinal(utf8);
				
				// encode to base64
				
				  	enc = BASE64EncoderStream.encode(enc);
		
		return new String(enc);
		
		  }
		
		  catch (Exception e) {
		
		  	e.printStackTrace();
		
		  }
		
		  return null;
		
		    }

			public static String decrypt(String str) {
		
				 /* try {
				
				  	// decode with base64 to get bytes
				
				byte[] dec = BASE64DecoderStream.decode(str.getBytes());
				key = KeyGenerator.getInstance("DES").generateKey();
				dcipher = Cipher.getInstance("DES");
				
				// initialize the ciphers with the given key
				System.out.println(str);
				
				dcipher.init(Cipher.DECRYPT_MODE, key);
				
				
				byte[] utf8 = dcipher.doFinal(dec);
				
				// create new string based on the specified charset
				
				return new String(utf8, "UTF8");
				
				  }
		
		  catch (Exception e) {
		
		  	e.printStackTrace();
		
		  }*/
		
		  return null;
		
		    }

}