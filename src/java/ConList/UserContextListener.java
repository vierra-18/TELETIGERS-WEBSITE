
package ConList;
import javax.servlet.*;

public class UserContextListener implements ServletContextListener
{    

    /**
     *
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce)
    {
        ServletContext sc = sce.getServletContext();

        User me = (User) sc.getAttribute("regUser");
        
        sc.setAttribute("me", me);
    }
    
    /**
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {} //Does nothing because no need for destroy
}
