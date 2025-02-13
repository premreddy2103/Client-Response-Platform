<%-- 
    Document   : avgrating
    Created on : May 16, 2019, 5:51:32 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String query="select * from cart";
ResultSet r=Queries.getExecuteQuery(query);
while(r.next()){
  String pname=r.getString("productname");

String query1="select avg(status2) from cart where productname='"+pname+"'";
ResultSet r1=Queries.getExecuteQuery(query1);

while(r1.next()){
 
    String ii=r1.getString(1); 
    System.out.println(ii);
    
    int i=Queries.getExecuteUpdate("update products set avgrating='"+ii+"'where pname='"+pname+"'");
     
}
  
}
 response.sendRedirect("AllProducts.jsp");
%>
