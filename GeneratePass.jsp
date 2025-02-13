<%-- 
    Document   : GeneratePass
    Created on : May 16, 2019, 5:25:05 PM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page import="com.key.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%String email=(String)session.getAttribute("email");
            String value=request.getParameter("value");
        String key=null;
            if(value!=null){
             key=Key.randomAlphaNumeric(8);
             
             String query="update ontimeuser set password='"+key+"'where email='"+email+"'";
             Queries.getExecuteQuery(query);
        }%>
    <center>
        <h2>You Have Successfully Purchased 5 Products.</h2>
        <h3>Now You Have Chance To Get Your Password To Covert As Regular User.</h3>
        <h4><a href="GeneratePass.jsp?value=a">Get Password</a></h4>
        
        <%if(key!=null){
           %>
           <font coloe="green">Your Password Is:: <%=key%></font> 
           <%
        }%>
    </center>
    </body>
</html>
