<%-- 
    Document   : StartupREgAction
    Created on : May 16, 2019, 12:04:51 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
try{String qy="select count(*)from startupreg where email='"+email+"' and name='"+name+"'";
int count=0;
ResultSet r=Queries.getExecuteQuery(qy);
while(r.next()){
  count=r.getInt(1);  
}
if(count==0){
    String query="insert into startupreg values(null,'"+name+"','"+email+"','"+mobile+"','"+address+"','"+uname+"','"+pass+"','waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
      <script type="text/javascript">
          window.alert("Registration Successfull!!!");
          window.location="StartUpReg.jsp";
          </script>
      <%
    }else{
      %>
      <script type="text/javascript">
          window.alert("Registration Failed!!!");
          window.location="StartUpReg.jsp";
          </script>
      <%
    }
}else{
  %>
      <script type="text/javascript">
          window.alert("Email/Start Up Name Already Exist try with another!!!");
          window.location="StartUpReg.jsp";
          </script>
      <%  
}
}catch(Exception e){
  out.println(e);
}
%>