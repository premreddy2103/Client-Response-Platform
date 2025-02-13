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

try{
    String qer="select count(email) from cart where email='"+email+"'";
    int count1=0;
ResultSet r1=Queries.getExecuteQuery(qer);
while(r1.next()){
  count1=r1.getInt(1);  
}
if(count1<5){
   String qy="select count(*)from ontimeuser where email='"+email+"'";
int count=0;
ResultSet r=Queries.getExecuteQuery(qy);
while(r.next()){
  count=r.getInt(1);  
}
if(count==0){
    String query="insert into ontimeuser values(null,'"+name+"','"+email+"','"+mobile+"','waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        session.setAttribute("email",email);
      response.sendRedirect("AllProducts.jsp?msg=success");
    }else{
      response.sendRedirect("index.html?msg=failed");
    }
}else{
       session.setAttribute("email",email);
  response.sendRedirect("AllProducts.jsp");
}
}else{
   session.setAttribute("email",email);
  response.sendRedirect("GeneratePass.jsp?msg=success");
  
}
}catch(Exception e){
  out.println(e);
}
%>