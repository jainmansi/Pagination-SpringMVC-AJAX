/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import neu.edu.myapp.DAO.DAO;
import neu.edu.myapp.pojo.csvfile;
import org.json.JSONObject;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author User
 */
public class homecontroller extends AbstractController {

    public homecontroller() {
    }

    protected ModelAndView handleRequestInternal(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        ModelAndView mav = new ModelAndView();

        ArrayList<csvfile> a = new ArrayList<csvfile>();
        try {
            Class.forName("org.relique.jdbc.csv.CsvDriver");
            Connection conn = DriverManager.getConnection("jdbc:relique:csv:C:\\Users\\user\\Documents\\NetBeansProjects\\Assignment5WebPart5\\web\\WEB-INF\\jsp");
            Statement stmt = conn.createStatement();
            int c1,d;
           
            c1 = Integer.parseInt(request.getParameter("count1"));
            d = (c1 - 1) * 100;
           
            System.out.println(d);
            ResultSet resultMessages = stmt.executeQuery("SELECT * FROM SalesOrder LIMIT 100 OFFSET " + d + "");
           
            while (resultMessages.next()) {
                csvfile messageBean = new csvfile();
                messageBean.setSalesOrderID(resultMessages.getString("SalesOrderID"));
                messageBean.setRevisionNumber(resultMessages.getString("RevisionNumber"));
                messageBean.setOrderDate(resultMessages.getString("OrderDate"));
                messageBean.setDueDate(resultMessages.getString("DueDate"));
                messageBean.setShipDate(resultMessages.getString("ShipDate"));
                messageBean.setStatus(resultMessages.getString("Status"));
                messageBean.setOnlineOrderFlag(resultMessages.getString("OnlineOrderFlag"));
                messageBean.setSalesOrderNumber(resultMessages.getString("SalesOrderNumber"));
                messageBean.setPurchaseOrderNumber(resultMessages.getString("PurchaseOrderNumber"));
                messageBean.setAccountNumber(resultMessages.getString("AccountNumber"));
                messageBean.setCustomerID(resultMessages.getString("CustomerID"));
                messageBean.setSalesPersonID(resultMessages.getString("SalesPersonID"));
                messageBean.setTerritoryID(resultMessages.getString("TerritoryID"));
                messageBean.setBillToAddressID(resultMessages.getString("BillToAddressID"));
                messageBean.setShipToAddressID(resultMessages.getString("ShipToAddressID"));
                messageBean.setShipMethodID(resultMessages.getString("ShipMethodID"));
                messageBean.setCreditCardID(resultMessages.getString("CreditCardID"));
                messageBean.setCreditCardApprovalCode(resultMessages.getString("CreditCardApprovalCode"));
                messageBean.setCurrencyRateID(resultMessages.getString("CurrencyRateID"));
                messageBean.setSubTotal(resultMessages.getString("SubTotal"));
                messageBean.setTaxAmt(resultMessages.getString("TaxAmt"));
                messageBean.setFreight(resultMessages.getString("Freight"));
                messageBean.setTotalDue(resultMessages.getString("TotalDue"));
                messageBean.setComment(resultMessages.getString("Comment"));
                messageBean.setModifiedDate(resultMessages.getString("ModifiedDate"));
                a.add(messageBean);
            }
            // Clean up
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        JSONObject obj = new JSONObject();
        obj.put("users", a);
        out.println(obj);

        return null;
    }
}
