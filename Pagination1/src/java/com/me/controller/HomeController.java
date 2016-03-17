/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.controller;

import com.me.pojo.CsvPojo;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author user
 */
public class HomeController extends AbstractController{

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        ModelAndView mv = new ModelAndView();
        
        ArrayList<CsvPojo> a = new ArrayList<>();
            try {
                Class.forName("org.relique.jdbc.csv.CsvDriver");
                Connection conn = DriverManager.getConnection("jdbc:relique:csv:C:\\Users\\user\\Documents\\NetBeansProjects\\Assignment5WebPart4\\web\\WEB-INF\\jsp");
                Statement stmt = conn.createStatement();
                int c,d;
                
                 c = Integer.parseInt(request.getParameter("count1"));
                 
                 
                 d = (c-1)*100;
                System.out.println(d);
                ResultSet resultMessages = stmt.executeQuery("SELECT * FROM SalesOrder LIMIT 100 OFFSET "+d+"");

                while (resultMessages.next()) {
                    CsvPojo csvBean = new CsvPojo();
                    csvBean.setSalesOrderID(resultMessages.getString("SalesOrderID"));
                    csvBean.setRevisionNumber(resultMessages.getString("RevisionNumber"));
                    csvBean.setOrderDate(resultMessages.getString("OrderDate"));
                    csvBean.setDueDate(resultMessages.getString("DueDate"));
                    csvBean.setShipDate(resultMessages.getString("ShipDate"));
                    csvBean.setStatus(resultMessages.getString("Status"));
                    csvBean.setOnlineOrderFlag(resultMessages.getString("OnlineOrderFlag"));
                    csvBean.setSalesOrderNumber(resultMessages.getString("SalesOrderNumber"));
                    csvBean.setPurchaseOrderNumber(resultMessages.getString("PurchaseOrderNumber"));
                    csvBean.setAccountNumber(resultMessages.getString("AccountNumber"));
                    csvBean.setCustomerID(resultMessages.getString("CustomerID"));
                    csvBean.setSalesPersonID(resultMessages.getString("SalesPersonID"));
                    csvBean.setTerritoryID(resultMessages.getString("TerritoryID"));
                    csvBean.setBillToAddressID(resultMessages.getString("BillToAddressID"));
                    csvBean.setShipToAddressID(resultMessages.getString("ShipToAddressID"));
                    csvBean.setShipMethodID(resultMessages.getString("ShipMethodID"));
                    csvBean.setCreditCardID(resultMessages.getString("CreditCardID"));
                    csvBean.setCreditCardApprovalCode(resultMessages.getString("CreditCardApprovalCode"));
                    csvBean.setCurrencyRateID(resultMessages.getString("CurrencyRateID"));
                    csvBean.setSubTotal(resultMessages.getString("SubTotal"));
                    csvBean.setTaxAmt(resultMessages.getString("TaxAmt"));
                    csvBean.setFreight(resultMessages.getString("Freight"));
                    csvBean.setTotalDue(resultMessages.getString("TotalDue"));
                    csvBean.setComment(resultMessages.getString("Comment"));
                    csvBean.setModifiedDate(resultMessages.getString("ModifiedDate"));
                    a.add(csvBean);
                }
                // Clean up
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
    
           JSONObject obj = new JSONObject();
           obj.put("users",a);
           out.println(obj);
        

            return null; 
        } 
    
}
