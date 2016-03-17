/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import neu.edu.myapp.DAO.DAO;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author User
 */
public class home2controller extends AbstractController {

    public home2controller() {
    }

    protected ModelAndView handleRequestInternal(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        ModelAndView mav = new ModelAndView();

        String b1 = request.getParameter("abc1");
        String b2 = request.getParameter("abc2");
        String b3 = request.getParameter("abc3");
        String b4= request.getParameter("abc4");
        String b5= request.getParameter("abc5");
        String b6= request.getParameter("abc6");
        String b7 = request.getParameter("abc7");
        String b8= request.getParameter("abc8");
        String b9= request.getParameter("abc9");
        String b10 = request.getParameter("abc10");
        String b11= request.getParameter("abc11");
        String b12= request.getParameter("abc12");
        String b13 = request.getParameter("abc13");
        String b14 = request.getParameter("abc14");
        String b15= request.getParameter("abc15");
        String b16 = request.getParameter("abc16");
        String b17= request.getParameter("abc17");
        String b18 = request.getParameter("abc18");
        String b19= request.getParameter("abc19");
        String b20= request.getParameter("abc20");
        String b21 = request.getParameter("abc21");
        String b22 = request.getParameter("abc22");
        String b23 = request.getParameter("abc23");
        String b24 = request.getParameter("abc24");
        String b25= request.getParameter("abc25");

        Connection conn = DAO.getConnectionJDBC();
        PreparedStatement ps;
            System.out.println("I am here");
            String query = "insert into csv values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            ps = conn.prepareStatement(query);
            ps.setString(1, b1);
            ps.setString(2, b2);
            ps.setString(3, b3);
            ps.setString(4, b4);
            ps.setString(5, b5);

            ps.setString(6, b6);
            ps.setString(7, b7);
            ps.setString(8, b8);
            ps.setString(9, b9);
            ps.setString(10, b10);

            ps.setString(11, b11);
            ps.setString(12, b12);
            ps.setString(13, b13);
            ps.setString(14, b14);
            ps.setString(15, b15);

            ps.setString(16, b16);
            ps.setString(17, b17);
            ps.setString(18, b18);
            ps.setString(19, b19);
            ps.setString(20, b20);
            
            
            ps.setString(21, b21);
            ps.setString(22, b22);
            ps.setString(23, b23);
            ps.setString(24, b24);
            ps.setString(25, b25);

            ps.executeUpdate();
        

        

        return null;
    }

}
