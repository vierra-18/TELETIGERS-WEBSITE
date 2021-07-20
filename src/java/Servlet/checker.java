/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import ConList.*;
import Exceptions.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.*;
import Encryption.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import nl.captcha.Captcha;
import static nl.captcha.Captcha.NAME;

/**
 *
 * @author Kira Akigari
 */
@WebServlet(name = "checker", urlPatterns = {"/checker"})
public class checker extends HttpServlet {

    String driver, dburl, dbuser, dbpass, usernotfound, wrongpass, accnotfound, captchaerror;
    private static String key;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet checker at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        usernotfound = config.getInitParameter("usernotfound");
        wrongpass = config.getInitParameter("wrongpass");
        accnotfound = config.getInitParameter("accnotfound");
        captchaerror = config.getInitParameter("captchaerror");
        driver = "org.apache.derby.jdbc.ClientDriver";
        dburl = "jdbc:derby://localhost:1527/TigerDB";
        dbuser = "app";
        dbpass = "app";

        key = config.getInitParameter("Key");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String userInput = request.getParameter("username");
            String passInput = request.getParameter("password");
            String userRec = "", passRec = "", role = "", game = "", name = "";
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(dburl, dbuser, dbpass);
            String command = "SELECT * FROM MEMBER_INFO WHERE IGN = ?";
            PreparedStatement statement = connection.prepareStatement(command);
            statement.setString(1, userInput);
            ResultSet resSet = statement.executeQuery();
            while (resSet.next()) {
                userRec = resSet.getString("IGN");
                passRec = resSet.getString("PASSWORD");
                game = resSet.getString("GAME");
                role = resSet.getString("ROLE");
                name = resSet.getString("REALNAME");
            }

            Security.key(key);
            passRec = Security.decrypt(passRec);
            System.out.println(userInput);
            System.out.println(userRec);

            System.out.println(passInput);

            System.out.println(passRec);

            if (userInput.trim().isEmpty() && passInput.isEmpty()) {
                throw new NullValueException();
            } else if ((userInput.trim().equals(userRec) && passInput.equals(passRec))) {
                String answer = request.getParameter("captchaAnswer");

                Captcha captcha = (Captcha) request.getSession().getAttribute(NAME);

                if (captcha.isCorrect(answer)) {
                    System.out.println("Password Matches");
                    if (role.equals("Manager") || role.equals("Admin")) {
                        response.sendRedirect("home_");
                    } else {
                        response.sendRedirect("_home");
                    }

                    ServletContext context = getServletContext();
                    context.setAttribute("SessionUser", userRec);
                    context.setAttribute("SessionPass", passRec);
                    context.setAttribute("SessionRole", role);
                    context.setAttribute("SessionGame", game);
                    context.setAttribute("SessionName", name);
                } else {
                    Messenger msg = new Messenger();
                    msg.setMessage(captchaerror);

                    ServletContext sc = getServletContext();
                    sc.setAttribute("msg", msg);

                    MessageContextListener usl = new MessageContextListener();
                    usl.contextInitialized(new ServletContextEvent(sc));;
                    throw new AuthenticationException();
                }

            } else if (!userInput.trim().equals(userRec) && passInput.isEmpty()) {

                Messenger msg = new Messenger();
                msg.setMessage(usernotfound);

                ServletContext sc = getServletContext();
                sc.setAttribute("msg", msg);

                MessageContextListener usl = new MessageContextListener();
                usl.contextInitialized(new ServletContextEvent(sc));

                throw new AuthenticationException();
            } else if (userInput.trim().equals(userRec) && !passInput.equals(passRec)) {

                Messenger msg = new Messenger();
                msg.setMessage(wrongpass);

                ServletContext sc = getServletContext();
                sc.setAttribute("msg", msg);

                MessageContextListener usl = new MessageContextListener();
                usl.contextInitialized(new ServletContextEvent(sc));

                throw new AuthenticationException();
            } else if (!userInput.trim().equals(userRec) && !passInput.equals(passRec)) {

                Messenger msg = new Messenger();
                msg.setMessage(accnotfound);

                ServletContext sc = getServletContext();
                sc.setAttribute("msg", msg);

                MessageContextListener usl = new MessageContextListener();
                usl.contextInitialized(new ServletContextEvent(sc));

                throw new AuthenticationException();
            }

            resSet.close();
            statement.close();
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
