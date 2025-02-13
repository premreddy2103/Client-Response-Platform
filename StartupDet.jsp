<%-- 
    Document   : Admin
    Created on : May 16, 2019, 11:02:26 AM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbcon.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Template Name: School Education
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CLIENT RESPONSE PLATFORM</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="table.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
<!-- Homepage Only Scripts -->
<script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
<script type="text/javascript">
$(function() {
    $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
        timeout: 5000,
        fx: 'fade',
        pager: '#fs_pagination',
        pause: 1,
        pauseOnPagerHover: 0
    });
});
</script>
<!-- End Homepage Only Scripts -->
</head>
<body>
<div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
     <br class="clear" />
    </div>
   
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="index.html">CLIENT RESPONSE PLATFORM</a></h1>
      
    </div>
    <div id="topnav">
      <ul>
        <li><a href="AdminHome.jsp">Home</a></li>
        <li class="active"><a href="StartupDet.jsp">Startup</a></li>
        <li><a href="ProductDet.jsp" title="NotSoldProduct">Product All Details</a></li>
      
        <li><a href="Admin.jsp" title="AVGProducts">Logout</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="featured_slide">
    <div class="featured_box"><a href="#"><img src="images/download.png" alt="" /></a>
      <div class="floater">
        <h2>1.Customer Feedback</h2>
        <p align="justify">What is customer feedback. Customer feedback is information provided by clients about whether they are satisfied or dissatisfied with a product or service and about general experience they had with a company. Their opinion is a resource for improving customer experience and adjusting your actions to their needs.</p> 
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/download.jpg" alt="" /></a>
      <div class="floater">
        <h2>2. Customer Opinion</h2>
        <p align="justify">Customer Opinion Surveys. ... It might be easier for a one-location service business to gather their customers' opinions, but for larger businesses or businesses with geographically dispersed customers, an Infosurv Research customer opinion survey is the way to go.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/family.jpg" alt="" /></a>
      <div class="floater">
        <h2>3. Global marketing</h2>
        <p align="justify">Global marketing is also a field of study in general business management that aims to market products, solutions and services to customers locally, nationally, and internationally.</p>
        
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/customers.jpg" alt="" /></a>
      <div class="floater">
        <h2>4. Group Discussion</h2>
        <p>Group Discussion", popularly labeled as GD, is a methodology used by an organization (company, institute, business school, etc.) to gauge whether the candidate has certain personality traits. GDs form an important part of the short-listing process for recruitment or admission in a company or institution</p> 
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
   
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="homecontent">
      <h3 style="margin-bottom:20px;">STARTUP DETAILS</h3>
      <table style="margin-bottom:270px;">
          <tr><th>ID</th><th>NAME</th><th>EMAIL</th><th>MOBILE</th><th>ADDRESS</th><th>STATUS</th></tr>
      <%
      String query="select * from startupreg";
      ResultSet r=Queries.getExecuteQuery(query);
      while(r.next()){
          String status=r.getString("status");
      
         %>
          <tr>
              <td><%=r.getString("id")%></td>
               <td><%=r.getString("name")%></td>
                <td><%=r.getString("email")%></td>
                 <td><%=r.getString("mobile")%></td>
                  <td><%=r.getString("address")%></td>
                  <%if(status.equals("waiting")){%>
                     <td><a href="activate.jsp?id=<%=r.getString("id")%>&email=<%=r.getString("email")%>">Activate</a></td>
         <%}else{
%>
<td><%=r.getString("status")%></td>
<%
}%>      
          </tr>
          <%
      }
      
      %>
      </table>
</div>
<!-- ####################################################################################################### -->


<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    
  </div>
</div>
</body>
</html>