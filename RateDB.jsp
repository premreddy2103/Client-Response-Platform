<%-- 
    Document   : CartDB
    Created on : May 16, 2019, 3:25:43 PM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String email=(String)session.getAttribute("email");
String id=(String)session.getAttribute("id");
String pname=(String)session.getAttribute("pname");
String rating=request.getParameter("rating");

try{
    String query="update cart set status2='"+rating+"'where productid='"+id+"'and productname='"+pname+"'";
    
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        response.sendRedirect("avgrating.jsp?msg=success");
    }else{
      response.sendRedirect("AllProducts.jsp?msg=failed");  
    }
    
}catch(Exception e){
    out.println(e);
}
%>
   
