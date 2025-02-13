<%-- 
    Document   : Admin
    Created on : May 16, 2019, 11:02:26 AM
    Author     : Acer
--%>

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
        <li><a href="StartUpHome.jsp">Home</a></li>
        <li class="active"><a href="PostProducts.jsp">Upload Products</a></li>
        <li><a href="ViewProducts.jsp">View Products</a></li>
      
        <li><a href="StartUp.jsp">Logout</a></li>
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
      <%String email=(String)session.getAttribute("email");
      String name=(String)session.getAttribute("name");
      String id=(String)session.getAttribute("id");%>
      <h3 style="margin-bottom:20px;">Welcome to STARTUP HOME</h3>
      <h3 style="margin-bottom:20px;"><%=id%>:<%=email%></h3>
      
      <form action="Postproduct" method="post" enctype="multipart/form-data">
          <center><h2>Post The Product Here</h2>
          <table  style="margin-bottom:250px;">
              <tr><th>Startup Name:</th><td><input type="text" name="sname" value="<%=name%>" readonly=""/></td></tr>
              <tr><th>Category Name</th><td><input type="text" name="category" required=""/></td></tr>
              <tr><th>Sub-Category</th><td><input type="text" name="sub_category" required=""/></td></tr>
              <tr><th>Product Name</th><td><input type="text" name="pname" required=""/></td></tr>
              <tr><th>No.of. Products</th><td><input type="text" name="noof" required=""/></td></tr>
              <tr><th>Product Description</th><td><textarea cols="20" rows="5" name="desc"></textarea></td></tr>
              
              <tr><th>Ambassador Image</th><td><input type="file" name="ambassador" required=""/></td></tr>
              <tr><th>Product Image</th><td><input type="file" name="image" required=""/></td></tr>
              <tr><th>Date</th><td><input type="date" name="date" required=""/></td></tr>
<tr><th></th><td><input type="submit" value="Post Now"/>    <input type="reset" value="Reset"/></td></tr>
              
          </table>
          </center>
      </form>
      
      
      
      
      
</div>
<!-- ####################################################################################################### -->


<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    
  </div>
</div>
</body>