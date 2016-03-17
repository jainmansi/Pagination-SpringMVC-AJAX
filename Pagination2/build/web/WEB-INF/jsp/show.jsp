<%-- 
    Document   : show
    Created on : 21 Feb, 2016, 1:46:50 PM
    Author     : User
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="neu.edu.myapp.pojo.csvfile"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <form action ="lmn.htm?" method="post">
            <input type ="submit" value ="submit"><br><br>
        <table style="border: 1px solid red">
            <tr>
                <th>SalesOrderID</th>
                <th>RevisionNumber</th>
                <th>OrderDate</th>
                <th>DueDate</th>
                <th>ShipDate</th>
                <th>Status</th>
                <th>OnlineOrderFlag</th>
                <th>SalesOrderNumber</th>
                <th>PurchaseOrderNumber</th>
                <th>AccountNumber</th>
                <th>CustomerID</th>
                <th>SalesPersonID</th>
                <th>TerritoryID</th>
                <th>BillToAddressID</th>
                <th>ShipMethodID</th>
                <th>ShipToAddressID</th>
                <th>ShipMethodID</th>
                <th>CreditCardID</th>
                <th>CreditCardApprovalCode</th>
                <th>CurrencyRateID</th>
                <th>SubTotal</th>
                <th>TaxAmt</th>
                <th>Freight</th>
                <th>TotalDue</th>
                <th>Comment</th>
                <th>ModifiedDate</th>


            </tr>       
            <%
                ArrayList l = (ArrayList) request.getAttribute("messageBeanList");
                for (int i = 0; i < l.size(); i++) {
                    csvfile s = (csvfile) l.get(i);
            %>
            <tr>
                <td><input name = "abc1" type="text" value=<%out.println(s.getSalesOrderID());%></td>
                <td><input name = "abc2" type="text" value=<%out.println(s.getRevisionNumber());%></td>
                <td><input name = "abc3"  type="text" value=<%out.println(s.getOrderDate());%></td>
                <td><input name = "abc4"  type="text" value=<%out.println(s.getDueDate());%></td>
                <td><input name = "abc5" type="text" value=<%out.println(s.getShipDate());%></td>
                <td><input name = "abc6" type="text" value=<%out.println(s.getStatus());%></td>
                <td><input name = "abc7" type="text" value=<%out.println(s.getOnlineOrderFlag());%></td>
                <td><input name = "abc8" type="text" value=<%out.println(s.getSalesOrderNumber());%></td>
                <td><input name = "abc9" type="text" value=<%out.println(s.getPurchaseOrderNumber());%></td>
                <td><input name = "abc10" type="text" value=<%out.println(s.getAccountNumber());%></td>
                <td><input name = "abc11" type="text" value=<%out.println(s.getCustomerID());%></td>
                <td><input name = "abc12" type="text" value=<%out.println(s.getSalesPersonID());%></td>
                <td><input name = "abc13" type="text" value=<%out.println(s.getTerritoryID());%></td>
                <td><input name = "abc14" type="text" value=<%out.println(s.getBillToAddressID());%></td>
                <td><input name = "abc15" type="text" value=<%out.println(s.getShipMethodID());%></td>
                <td><input name = "abc16" type="text" value=<%out.println(s.getShipToAddressID());%></td>
                <td><input name = "abc17" type="text" value=<%out.println(s.getShipMethodID());%></td>
                <td><input name = "abc18" type="text" value=<%out.println(s.getCreditCardID());%></td>
                <td><input name = "abc19" type="text" value=<%out.println(s.getCreditCardApprovalCode());%></td>
                <td><input name = "abc20" type="text" value=<%out.println(s.getCurrencyRateID());%></td>
                <td><input name = "abc21" type="text" value=<%out.println(s.getSubTotal());%></td>
                <td><input name = "abc22" type="text" value=<%out.println(s.getTaxAmt());%></td>
                <td><input name = "abc23" type="text" value=<%out.println(s.getFreight());%></td>
                <td><input name = "abc24" type="text" value=<%out.println(s.getTotalDue());%></td>
                <td><input name = "abc25" type="text" value=<%out.println(s.getComment());%></td>
                <td><input name = "abc26" type="text" value=<%out.println(s.getModifiedDate());%></td>


            </tr>
            <% }%>
            
            
        </table>
    </body>
</html>

