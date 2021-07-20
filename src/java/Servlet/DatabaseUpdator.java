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

import ConList.MessageContextListener;
import ConList.Messenger;
import Exceptions.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.*;
import Encryption.*;

/**
 *
 * @author Kira Akigari
 */
@WebServlet(name = "Update", urlPatterns = {"/Update"})
public class DatabaseUpdator extends HttpServlet {

    String driver, dburl, dbuser, dbpass, logname, passmismatch, incorrectpass;
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
        driver = "org.apache.derby.jdbc.ClientDriver";
        dburl = "jdbc:derby://localhost:1527/TigerDB";
        dbuser = "app";
        dbpass = "app";

        key = config.getInitParameter("Key");

        passmismatch = config.getInitParameter("passmismatch");
        incorrectpass = config.getInitParameter("incorrectpass");
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
            ServletContext context = getServletContext();
            logname = (String) context.getAttribute("SessionUser");
            String username = "", password = "", role = "", oldPass = "", newPass = "", confirmPass = "";
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(dburl, dbuser, dbpass);
            String command = "SELECT * FROM MEMBER_INFO WHERE IGN = ?";
            PreparedStatement statement = connection.prepareStatement(command);
            statement.setString(1, logname);
            ResultSet resSet = statement.executeQuery();
            while (resSet.next()) {
                username = resSet.getString("IGN");
                password = resSet.getString("PASSWORD");
                role = resSet.getString("ROLE");
            }
            Security.key(key);
            password = Security.decrypt(password);

            if (role.equals("Player")) {
                oldPass = request.getParameter("oldPassword");
                if (oldPass.equals(password)) {
                    newPass = request.getParameter("newPassword");
                    confirmPass = request.getParameter("confirmPassword");
                    if (newPass.equals(confirmPass)) {
                        Security.key(key);
                        newPass = Security.encrypt(newPass);
                        System.out.println(newPass);
                        command = "UPDATE MEMBER_INFO SET PASSWORD = ? WHERE IGN = ?";
                        PreparedStatement statement2 = connection.prepareStatement(command);
                        statement2.setString(1, newPass);
                        statement2.setString(2, logname);
                        statement2.executeUpdate();
                        statement2.close();
                    } else {
                        Messenger msg = new Messenger();
                        msg.setMessage(passmismatch);

                        ServletContext sc = getServletContext();
                        sc.setAttribute("msg", msg);

                        MessageContextListener usl = new MessageContextListener();
                        usl.contextInitialized(new ServletContextEvent(sc));;
                        throw new AuthenticationException();
                    }
                    response.sendRedirect("account");
                } else {
                    Messenger msg = new Messenger();
                    msg.setMessage(incorrectpass);

                    ServletContext sc = getServletContext();
                    sc.setAttribute("msg", msg);

                    MessageContextListener usl = new MessageContextListener();
                    usl.contextInitialized(new ServletContextEvent(sc));;
                    throw new AuthenticationException();
                }
            }
            if (role.equals("Manager")) {
                String UserCommand = request.getParameter("command");

                if (UserCommand.equals("Add")) {
                    password = request.getParameter("password");
                    confirmPass = request.getParameter("conPassword");
                    if (password.equals(confirmPass)) {
                        String fName = request.getParameter("Fullname");
                        String InGameName = request.getParameter("Ign");
                        String GameName = request.getParameter("game");
                        Security.key(key);
                        password = Security.encrypt(password);

                        command = "INSERT INTO MEMBER_INFO VALUES ('" + InGameName + "', '" + fName + "', '" + password + "', '" + GameName + "', 'Active', 'Player')";
                        PreparedStatement statement3 = connection.prepareStatement(command);
                        statement3.executeUpdate();
                        statement3.close();
                        response.sendRedirect("account_");
                    } else {
                        Messenger msg = new Messenger();
                        msg.setMessage(passmismatch);

                        ServletContext sc = getServletContext();
                        sc.setAttribute("msg", msg);

                        MessageContextListener usl = new MessageContextListener();
                        usl.contextInitialized(new ServletContextEvent(sc));;
                        throw new AuthenticationException();
                    }
                }
                if (UserCommand.equals("Delete")) {
                    String deletedUser = request.getParameter("userDelete");
                    command = "DELETE FROM MEMBER_INFO WHERE IGN = ?";
                    PreparedStatement statement4 = connection.prepareStatement(command);
                    statement4.setString(1, deletedUser);
                    statement4.executeUpdate();
                    statement4.close();
                    response.sendRedirect("account_");
                }
                if (UserCommand.equals("Password")) {
                    String oldPassword = request.getParameter("oldPassword2");
                    if (oldPassword.equals(password)) {
                        String newPassword = request.getParameter("newPassword2");
                        String confirmPassword = request.getParameter("confirmPassword2");
                        if (newPassword.equals(confirmPassword)) {
                            Security.key(key);
                            newPassword = Security.encrypt(newPassword);
                            System.out.println(newPassword);
                            command = "UPDATE MEMBER_INFO SET PASSWORD = ? WHERE IGN = ?";
                            PreparedStatement statement5 = connection.prepareStatement(command);
                            statement5.setString(1, newPassword);
                            statement5.setString(2, logname);
                            statement5.executeUpdate();
                            statement5.close();
                        } else {
                            Messenger msg = new Messenger();
                            msg.setMessage(passmismatch);

                            ServletContext sc = getServletContext();
                            sc.setAttribute("msg", msg);

                            MessageContextListener usl = new MessageContextListener();
                            usl.contextInitialized(new ServletContextEvent(sc));;
                            throw new AuthenticationException();
                        }
                        response.sendRedirect("account_");
                    } else {
                        Messenger msg = new Messenger();
                        msg.setMessage(passmismatch);
                        System.out.println(msg);
                        ServletContext sc = getServletContext();
                        sc.setAttribute("msg", msg);

                        MessageContextListener usl = new MessageContextListener();
                        usl.contextInitialized(new ServletContextEvent(sc));;
                        throw new AuthenticationException();
                    }
                }
            }

            resSet.close();
            statement.close();
            connection.close();

        } catch (ClassNotFoundException | SQLException e) {
            response.sendRedirect("404error");
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
