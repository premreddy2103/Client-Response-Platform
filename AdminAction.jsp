<%-- 
    Document   : AdminAction
    Created on : Apr 15, 2019, 10:40:22 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String uname=request.getParameter("uname");
String pwd=request.getParameter("pass");
try{
    if(uname.equalsIgnoreCase("Admin")&&pwd.equalsIgnoreCase("Admin")){
      %>
      <script type="text/javascript">
          window.alert("Login Success!!!");
          window.location="AdminHome.jsp";
          </script>
      <%
    }else{
 %>
      <script type="text/javascript">
          window.alert("Login Failed!!!");
          window.location="Admin.jsp";
          </script>
      <%
}
}catch(Exception e){
   out.println(e); 
}
%>