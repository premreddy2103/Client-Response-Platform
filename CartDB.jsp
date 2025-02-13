<%-- 
    Document   : CartDB
    Created on : May 16, 2019, 3:25:43 PM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String email=(String)session.getAttribute("email");
String id=request.getParameter("id");
String pname=request.getParameter("pname");
try{
    String query="insert into cart values(null,'"+email+"','"+id+"','"+pname+"','waiting','waiting')";
    
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        response.sendRedirect("Cart.jsp");
    }else{
      response.sendRedirect("AllProducts.jsp?msg=failed to add to cart");  
    }
    
}catch(Exception e){
    out.println(e);
}
%>
   
