<%-- 
    Document   : activate
    Created on : 8 Jan, 2019, 5:07:29 PM
    Author     : VENKAT
--%>

<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="com.dbcon.DBCon" %>
<%
    String uname=request.getParameter("uname");
      String pass=request.getParameter("pass");
            
    try
     {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
     ResultSet r=Queries.getExecuteQuery("select * from startupreg where username='"+uname+"'and password='"+pass+"'");
if(r.next())
{
    String name=r.getString("name");
    String email=r.getString("email");
     String id=r.getString("id");
    String status=r.getString("status");
    if(status.equals("waiting")){
         %>
                 <script type="text/javascript">
                     window.alert("Your Are Not Authorized By the Admin");
                     window.location="StartUp.jsp";
                     </script>
                 <%
    }
session.setAttribute("name",name);
session.setAttribute("email",email);
session.setAttribute("id",id);
     %>
                 <script type="text/javascript">
                     window.alert("Startup lOGIN successfully");
                     window.location="StartUpHome.jsp";
                     </script>
                 <%
}
else

{
%>
<script type="text/javascript">
                     window.alert("Startup Login Fail ");
                     window.location="StartUp.jsp";
                     </script>
                 <%
}
}
catch(Exception e)
{
out.println(e);
}
%>
