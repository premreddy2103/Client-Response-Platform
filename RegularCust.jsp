<%-- 
    Document   : AdminAction
    Created on : Apr 15, 2019, 10:40:22 AM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String uname=request.getParameter("email");
String pwd=request.getParameter("password");
try{
    ResultSet r=Queries.getExecuteQuery("select * from ontimeuser where email='"+uname+"'and password='"+pwd+"'");
    if(r.next()){
      %>
      <script type="text/javascript">
          window.alert("Login Success!!!");
          window.location="AllProducts.jsp";
          </script>
      <%
    }else{
 %>
      <script type="text/javascript">
          window.alert("Login Failed!!!");
          window.location="index.html";
          </script>
      <%
}
}catch(Exception e){
   out.println(e); 
}
%>