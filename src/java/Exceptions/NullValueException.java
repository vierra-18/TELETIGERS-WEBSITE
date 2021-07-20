package Exceptions;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

public class NullValueException extends RuntimeException
{
    public NullValueException()
    {
        super("No Usernamme or Password input found");
    }
    
    public NullValueException(HttpServletResponse response)
    {
        try
        {
            response.sendRedirect("Null_Value_Error");
        }
        catch(IOException ex)
        {
            System.out.println(ex);
        }
    }
}
