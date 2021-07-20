/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Encryption;

/**
 *
 * @author Kira Akigari
 */
import java.io.*;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.*;

import javax.servlet.http.*;
import javax.servlet.*;

public class Security extends HttpServlet
{
    private static byte[] Key;
    
    public static void key(String LucKey)
    {
        Key = LucKey.getBytes();
    }

    public static String encrypt(String strToEncrypt) 
    {
        String encryptedString = null;
        try
        {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            final SecretKeySpec secretKey = new SecretKeySpec(Key, "AES");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);
            encryptedString = Base64.encodeBase64String(cipher.doFinal(strToEncrypt.getBytes()));
        } 
        catch (Exception e) 
        {
            System.err.println(e.getMessage());
        }
        return encryptedString;
    }

    public static String decrypt(String codeDecrypt)
    {
        String decryptedString = null;
        try
        {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
            final SecretKeySpec secretKey = new SecretKeySpec(Key, "AES");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
            decryptedString = new String(cipher.doFinal(Base64.decodeBase64(codeDecrypt)));
        }
        catch (Exception e) 
        {
            System.err.println(e.getMessage());
        }
        return decryptedString;
    }	
}
