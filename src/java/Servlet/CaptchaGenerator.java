/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import static java.awt.Color.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import nl.captcha.Captcha;
import static nl.captcha.Captcha.NAME;
import nl.captcha.backgrounds.GradiatedBackgroundProducer;
import nl.captcha.gimpy.DropShadowGimpyRenderer;
import nl.captcha.gimpy.FishEyeGimpyRenderer;
import nl.captcha.servlet.CaptchaServletUtil;

public class CaptchaGenerator extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String PARAM_WIDTH = "width";
    private static final String PARAM_HEIGHT = "height";
   
    protected int width = 324;
    protected int height = 80;
    String captchaResult;

    public void init() throws ServletException {
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Captcha captcha = new Captcha.Builder(width, height)
                .addText()
                .addBorder()
                .gimp()
                .addBackground(new GradiatedBackgroundProducer())
                .addNoise()
                .addNoise()
                .addNoise()
                .addNoise()
                .build();
        
        String c = captcha.getAnswer();
        System.out.println(c);
        request.setAttribute(c,captchaResult);
        CaptchaServletUtil.writeImage(response, captcha.getImage());
        request.getSession().setAttribute(NAME, captcha);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}