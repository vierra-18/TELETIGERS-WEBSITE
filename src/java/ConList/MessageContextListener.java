package ConList;
import javax.servlet.*;

public class MessageContextListener implements ServletContextListener
{
    @Override
    public void contextInitialized(ServletContextEvent sce)
    {
        ServletContext sc = sce.getServletContext();

        Messenger me = (Messenger) sc.getAttribute("msg");
        
        sc.setAttribute("me", me);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {} 
}