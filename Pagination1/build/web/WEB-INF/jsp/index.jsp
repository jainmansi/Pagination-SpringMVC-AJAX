<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagination</title>
        <style>
            a
            {margin-right: 50px;
            }
            span{display: none;}
        </style>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>

    <body style="background-color: beige">
        <form onsubmit="return fn(1)">
            <div class="form-group">
                <div class='col-sm-3' style="text-align: center">
                    <input type ="submit" value ="Fetch CSV Data!" class="btn btn-default"> <br><br>
                </div>                        
            </div>
        </form>

        <div id ="results"></div><br><br>
        <span id="page"> 
            <center>
                <a href="#" onclick="fn(1)"><font color="white">1</font></a>
                <a href="#" onclick="fn(2)">2</a>
                <a href="#" onclick="fn(3)">3</a>
                <a href="#" onclick="fn(4)">4</a>
                <a href="#" onclick="fn(5)">5</a>
                <a href="#" onclick="fn(6)">6</a>
                <a href="#" onclick="fn(7)">7</a>
                <a href="#" onclick="fn(8)">8</a>
                <a href="#" onclick="fn(9)">9</a>
                <a href="#" onclick="fn(10)">10</a>
            </center>
        </span>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script>
                var count;
                function fn(count)
                {
                    $("#myTable").empty();
                    var xmlHttp;
                    try     // Firefox, Opera 8.0+, Safari
                    {
                        xmlHttp = new XMLHttpRequest();
                    } catch (e)
                    {
                        try  // Internet Explorer
                        {
                            xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                        } catch (e)
                        {
                            try
                            {
                                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                            } catch (e)
                            {
                                alert("Your browser does not support AJAX!");
                                return false;
                            }
                        }
                    }

                    xmlHttp.open("GET", "first.htm?count1=" + count + "", true);   //q is the name of the parameter to be used in JSP
                    xmlHttp.send();   //leave blank, or pass null. Not used with GET requests

                    $("span").empty();
                    for (i = 0; i < 10; i++)
                    {
                        var x1 = document.createElement("A");
                        x1.setAttribute("href", "#");
                        x1.setAttribute("onclick", "fn(" + count + ")");

                        x1.innerHTML = count;
                        document.getElementsByTagName("span")[0].appendChild(x1);
                        count++;
                    }

                    document.getElementsByTagName("span")[0].style.display = "inline";
                    //3. Check the server-data is ready
                    xmlHttp.onreadystatechange = function ()
                    {
                        if (xmlHttp.readyState == 4)
                        {
                            //4. Manipulate the DOM

                            //document.getElementsByTagName("h3")[0].style.display="none";

                            var json = JSON.parse(xmlHttp.responseText);

                            if (json.users.length > 0) {

                                var x = document.createElement("TABLE");
                                x.setAttribute("id", "myTable");
                                document.getElementById("results").appendChild(x);

                                var y = document.createElement("TR");
                                y.setAttribute("id", "myTr");
                                document.getElementById("myTable").appendChild(y);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("SalesOrderID");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("RevisionNumber");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("OrderDate");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("due date");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("ship date");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("Status");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("OnlineOrderFlag");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("SalesOrderNumber");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("PurchaseOrderNumber");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("Account Number");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("SalesOrderID");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("CustomerID");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("Sales person ID");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("TerritoryID");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("Bill to address ID");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("ShipMethodID");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("Ship to address ID");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("Credit Card ID");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("CreditCardApprovalCode");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("Currency Rate ID");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("SubTotal");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("Tax Amt");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("Freight");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("TotalDue");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                var z = document.createElement("TH");
                                var t = document.createTextNode("ModifiedDate");
                                z.appendChild(t);
                                document.getElementById("myTr").appendChild(z);

                                for (var count = 0; count < json.users.length; count++) {

                                    var y = document.createElement("TR");
                                    document.getElementById("myTable").appendChild(y);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].salesOrderID);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].revisionNumber);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].orderDate);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].dueDate);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].shipDate);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].status);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].onlineOrderFlag);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].salesOrderNumber);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].purchaseOrderNumber);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].accountNumber);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].customerID);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].salesPersonID);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].territoryID);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].billToAddressID);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].shipToAddressID);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].shipMethodID);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].creditCardID);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].creditCardApprovalCode);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].currencyRateID);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].subTotal);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].taxAmt);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].freight);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].totalDue);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].comment);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var t = document.createElement("INPUT");
                                    t.setAttribute("type", "text");
                                    t.setAttribute("value", json.users[count].modifiedDate);
                                    z.appendChild(t);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var btn = document.createElement("BUTTON");        // Create a <button> element
                                    var t = document.createTextNode("DELETE");       // Create a text node
                                    btn.appendChild(t);                                // Append the text to <button>
                                    btn.setAttribute("onclick", "fndelete(this)");
                                    z.appendChild(btn);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);

                                    var z = document.createElement("TD");
                                    var btn = document.createElement("BUTTON");        // Create a <button> element
                                    var t = document.createTextNode("SAVE");       // Create a text node
                                    btn.appendChild(t);
                                    btn.setAttribute("onclick", "fnsave(this)");
                                    z.appendChild(btn);
                                    document.getElementById('myTable').lastElementChild.appendChild(z);
                                }
                            }
                        }
                    }
                    return false;
                }

                function fndelete(del)
                {
                    var a1 = del.parentElement.parentElement;
                    var a2 = del.parentElement.parentElement.parentElement;
                    a2.removeChild(a1);
                }

                function fnsave(del)
                {

                    var a1 = del.parentElement.parentElement;
                    del.innerHTML = "SAVED"
                    del.disabled = true;
                    del.parentElement.previousSibling.children[0].disabled = true;
                    var d = "";
                    for (i = 1; i <= 25; i++)
                    {
                        a1.children[i - 1].children[0].style.backgroundColor = "#ccff33";
                        d = d + "item" + [i] + "=" + a1.children[i - 1].children[0].value + "&";
                    }
                    fn3(d);

                }

                function fn3(d)
                {
                    var xmlHttp;
                    try     // Firefox, Opera 8.0+, Safari
                    {
                        xmlHttp = new XMLHttpRequest();
                    } catch (e)
                    {
                        try  // Internet Explorer
                        {
                            xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                        } catch (e)
                        {
                            try
                            {
                                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                            } catch (e)
                            {
                                alert("Your browser does not support AJAX!");
                                return false;
                            }
                        }
                    }

                    xmlHttp.open("GET", "second.htm?" + d + "", true);   //q is the name of the parameter to be used in JSP
                    xmlHttp.send();   //leave blank, or pass null. Not used with GET requests

                }
        </script>
    </body>
</html>
