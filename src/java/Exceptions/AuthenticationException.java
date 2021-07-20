
package Exceptions;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

public class AuthenticationException extends RuntimeException {
    public AuthenticationException()
	{
		super("wrong username or password");
	}
    
    public AuthenticationException(HttpServletResponse response)
	{
        try {
            response.sendRedirect("authentication_error");
        } catch (IOException ex) {
            System.out.println(ex);
        }
	}
}
