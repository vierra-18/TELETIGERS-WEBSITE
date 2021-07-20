package Servlet;

import java.sql.*;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.*;
import java.io.*;
import java.nio.file.*;
import javax.servlet.http.*;
import java.time.format.*;
import java.time.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.*;
import javax.servlet.*;

@WebServlet(name = "Manager-PDF", urlPatterns = { "/Manager-PDF" })
public class ManagerPDF extends HttpServlet
{
    static String driver, dburl, dbuser, dbpass; 
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");  
    LocalDateTime now = LocalDateTime.now(); 
    String currentTime = dtf.format(now);
    private static int Pages = 1;
    
    public class HeaderFooter extends PdfPageEventHelper 
    {
        String header = getServletContext().getInitParameter("header"); 
        String footer = getServletContext().getInitParameter("footer");
        
        @Override
        public void onStartPage(PdfWriter writer, Document document) 
        {
            ColumnText.showTextAligned(writer.getDirectContent(), Element.ALIGN_CENTER, new Paragraph(header), 300, 810, 0);
        }
        @Override
        public void onEndPage(PdfWriter writer, Document docs) 
        {
            
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");  
            LocalDateTime now = LocalDateTime.now(); 
            String currentTime = dtf.format(now);
            ColumnText.showTextAligned(writer.getDirectContent(), Element.ALIGN_CENTER, new Paragraph(footer), 100, 30, 0);
            ColumnText.showTextAligned(writer.getDirectContent(), Element.ALIGN_CENTER, new Paragraph("page " + docs.getPageNumber() + " of " + Pages + " | " + currentTime), 450, 30, 0);
        }
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        
    
    }
    @Override
    protected void doPost (HttpServletRequest request,HttpServletResponse response) throws  FileNotFoundException,ServletException, IOException
    {
        driver = "org.apache.derby.jdbc.ClientDriver";
        dburl = "jdbc:derby://localhost:1527/TigerDB";
        dbuser = "app";
        dbpass = "app";
        ServletContext context = getServletContext();
        String nameInfo = (String) context.getAttribute("SessionUser");
        String gameInfo = (String) context.getAttribute("SessionGame");
        String roleInfo = (String) context.getAttribute("SessionRole");
        System.out.println(nameInfo);
        System.out.println(gameInfo);
        System.out.println(roleInfo);

        try
        {
            String gameName = "", realName = "",game = "",playerStatus = "",role = "", command = "";
            Statement statement = null;
            //Statement statement2 = null;
            Class.forName(driver); 
            Connection connection = DriverManager.getConnection(dburl, dbuser, dbpass);
            statement = (Statement) connection.createStatement();
            if(roleInfo.equals("Admin"))
            {
                 command = "SELECT * FROM MEMBER_INFO";
            }
            else if (roleInfo.equals("Manager"))
            {
                 command = "SELECT * FROM MEMBER_INFO WHERE GAME='"+gameInfo+"'";
            }
            else if(roleInfo.equals("Player"))
            {
                command = "SELECT * FROM MEMBER_INFO WHERE GAME = '"+gameInfo+"' INTERSECT  SELECT * FROM MEMBER_INFO WHERE ROLE = '"+roleInfo+"'";
            }
            
            ResultSet resSet = statement.executeQuery(command);
                    /* 
            
             }
            statement2 = (Statement) connection.createStatement();
            ResultSet resSet2 = statement2.executeQuery("SELECT * FROM USER_INFO WHERE USERNAME = '"+nameLogin+"'"); */
            if(connection != null)
            {
                try
                {
                    int count = 1;
                    System.out.println("ddd");
                    
                String fileName = currentTime + ".pdf";
                response.setContentType("application/pdf");
                ServletOutputStream out = response.getOutputStream();
                File file = new File(fileName);
                Document docs = new Document();
                PdfWriter writer = PdfWriter.getInstance(docs,out);
                HeaderFooter event = new HeaderFooter();
                writer.setPageEvent(event);
                docs.open();
                PdfPTable table = new PdfPTable(6);
                PdfPCell cell1 = new PdfPCell(new Paragraph(" "));
                PdfPCell cell2 = new PdfPCell(new Paragraph("IGN"));
                PdfPCell cell3 = new PdfPCell(new Paragraph("Real Name"));
                PdfPCell cell4 = new PdfPCell(new Paragraph("Game"));
                PdfPCell cell5 = new PdfPCell(new Paragraph("Player Status"));
                PdfPCell cell6 = new PdfPCell(new Paragraph("Role"));
                table.addCell(cell1);
                table.addCell(cell2);
                table.addCell(cell3);
                table.addCell(cell4);
                table.addCell(cell5);
                table.addCell(cell6);
                
                while (resSet.next()) 
                {
                    table.addCell("" + count);
                    gameName = resSet.getString("IGN");
                    realName = resSet.getString("REALNAME");
                    game = resSet.getString("GAME");
                    playerStatus = resSet.getString("PLAYERSTATUS");
                    role = resSet.getString("ROLE"); 
                    table.addCell(gameName);
                    table.addCell(realName);
                    table.addCell(game);
                    table.addCell(playerStatus);
                    table.addCell(role);
                    if(count >= 31)
                    {
                        Pages = (int) Math.ceil((double)count/31);
                    }
                    count++;
                }
                if(count >= 30)
                {
                    table.setBreakPoints(30,60,90);
                    docs.add(table);
                    docs.close();
                }
                else
                {
                    docs.add(table);
                    docs.close();
                }
                }
                catch (DocumentException ex) {
                    Logger.getLogger(ManagerPDF.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            resSet.close();
            //resSet2.close();
            statement.close();
            //statement2.close();
            connection.close();
            
            
        } catch (ClassNotFoundException  | SQLException e) {
            
            
        } 
    }
    
}
