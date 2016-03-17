/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.controller;

import com.me.Dao.Dao;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author user
 */
public class NewHomeController extends AbstractController{

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        ModelAndView mv = new ModelAndView();

        String b1 = request.getParameter("item1");
        String b2 = request.getParameter("item2");
        String b3 = request.getParameter("item3");
        String b4= request.getParameter("item4");
        String b5= request.getParameter("item5");
        String b6= request.getParameter("item6");
        String b7 = request.getParameter("item7");
        String b8= request.getParameter("item8");
        String b9= request.getParameter("item9");
        String b10 = request.getParameter("item10");
        String b11= request.getParameter("item11");
        String b12= request.getParameter("item12");
        String b13 = request.getParameter("item13");
        String b14 = request.getParameter("item14");
        String b15= request.getParameter("item15");
        String b16 = request.getParameter("item16");
        String b17= request.getParameter("item17");
        String b18 = request.getParameter("item18");
        String b19= request.getParameter("item19");
        String b20= request.getParameter("item20");
        String b21 = request.getParameter("item21");
        String b22 = request.getParameter("item22");
        String b23 = request.getParameter("item23");
        String b24 = request.getParameter("item24");
        String b25= request.getParameter("item25");

        Connection conn = Dao.getConnectionJDBC();
        PreparedStatement ps;
            System.out.println("I am here");
            String query = "insert into salesordertable values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
