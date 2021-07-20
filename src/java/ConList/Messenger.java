package ConList;


public class Messenger 
{
    private static String message;

    public static void setMessage(String msg)
    {
        message = msg;
    }
    
    public String getMessage()
    {
        return message;
    }

    public String toString()
    {
        return getMessage();
    }
 
}
