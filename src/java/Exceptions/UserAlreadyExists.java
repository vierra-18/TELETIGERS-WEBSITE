package Exceptions;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

public class UserAlreadyExists extends RuntimeException {
    public UserAlreadyExists(){
        super("Username already exists");
    }
    
    public UserAlreadyExists(HttpServletResponse response){
        try {
            response.sendRedirect("UserExists");
        } catch (IOException ex) {
            System.out.println(ex);
        }
    }
}
