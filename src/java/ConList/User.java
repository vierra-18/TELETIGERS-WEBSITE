/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConList;

public class User
{
    private static String username;
    private static String password;
    private static String userRole;
    
    public static void setUser(String userRec, String passRec, String role)
    {
        username = userRec;
        password = userRec;
        userRole = role;
        
    }
    public String getUsername()
    {
        return username;
    }

    public static String getPassword() 
    {
        return password;
    }
    
    public String getRole()
    {
        return userRole;
    }

    @Override
    public String toString()
    {
        return "Welcome " + getUsername() + " (" + getRole() + ")" ;
    }
}
