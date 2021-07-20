package Exceptions;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

public class PassNotMatch extends RuntimeException {
    public PassNotMatch (){
        super("Passwords does not Match");
    }
    
    public PassNotMatch(HttpServletResponse response){
        try {
            response.sendRedirect("error_6");
        } catch (IOException ex) {
            System.out.println(ex);
        }
    }
}