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

@WebServlet(name = "Admin-PDF", urlPatterns = { "/AdminPDF" })
public class AdminPDF extends HttpServlet
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
            ColumnText.showTextAligned(writer.getDirectContent(), Element.ALIGN_CENTER, new Paragraph(header), 425, 575, 0);
        }
        @Override
        public void onEndPage(PdfWriter writer, Document docs) 
        {
            ColumnText.showTextAligned(writer.getDirectContent(), Element.ALIGN_CENTER, new Paragraph(footer), 200, 30, 0);
            ColumnText.showTextAligned(writer.getDirectContent(), Element.ALIGN_CENTER, new Paragraph("page " + docs.getPageNumber() + " of " + Pages + " | " + currentTime), 550, 30, 0);
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
        String gameInfo = request.getParameter("userinfo");
        String nameRole = request.getParameter("roleinfo");
        String queryCode;
        //Path pathName = Paths.get(System.getProperty("user.home"));
        //String path = pathName.toAbsolutePath().toString();
        

        try
        {
            String gameName = "", realName = "",game = "",playerStatus = "";
            Statement statement = null;
            //Statement statement2 = null;
            Class.forName(driver); 
            Connection connection = DriverManager.getConnection(dburl, dbuser, dbpass);
            statement = (Statement) connection.createStatement();
           
                queryCode = "SELECT * FROM MEMBER_INFO";
       
            ResultSet resSet = statement.executeQuery(queryCode);
            /* 
             }
            statement2 = (Statement) connection.createStatement();
            ResultSet resSet2 = statement2.executeQuery("SELECT * FROM USER_INFO WHERE USERNAME = '"+nameLogin+"'"); */
            if(connection != null)
            {
                try
                {
                    int count = 1;
                    
                String fileName = currentTime + ".pdf";
                File file = new File(fileName);
                Document docs = new Document();
                PdfWriter writer = PdfWriter.getInstance(docs,new FileOutputStream(file));
                Rectangle rect = new Rectangle(PageSize.A4.rotate());
                docs.setPageSize(rect);
                HeaderFooter event = new HeaderFooter();
                writer.setPageEvent(event);
                docs.open();
                PdfPTable table = new PdfPTable(5);
                PdfPCell cell1 = new PdfPCell(new Paragraph(" "));
                PdfPCell cell2 = new PdfPCell(new Paragraph("IGN"));
                PdfPCell cell3 = new PdfPCell(new Paragraph("Real Name"));
                PdfPCell cell4 = new PdfPCell(new Paragraph("Game"));
                PdfPCell cell5 = new PdfPCell(new Paragraph("Player Status"));
                table.addCell(cell1);
                table.addCell(cell2);
                table.addCell(cell3);
                table.addCell(cell4);
                table.addCell(cell5);
                
                while (resSet.next()) 
                {
                    table.addCell("" + count);
                    gameName = resSet.getString("IGN");
                    realName = resSet.getString("REALNAME");
                    game = resSet.getString("GAME");
                    playerStatus = resSet.getString("PLAYERSTATUS");
                    table.addCell(gameName);
                    table.addCell(realName);
                    table.addCell(game);
                    table.addCell(playerStatus);
                    if(count >= 31)
                    {
                        Pages = (int) Math.ceil((double)count/31);
                    }
                    count++;
                }
                table.setBreakPoints(30,60,90);
                docs.add(table);
                docs.close();
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
            
            response.sendRedirect("AdminSuccess");
            
        } catch (ClassNotFoundException  | SQLException e) {
            
            
        } 
    }
    
}
