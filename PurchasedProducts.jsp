<%-- 
    Document   : Admin
    Created on : May 16, 2019, 11:02:26 AM
    Author     : Acer
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dbcon.DBCon"%>
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
      <h1><a href="#">CLIENT RESPONSE PLATFORM</a></h1>
      
    </div>
    <div id="topnav">
      <ul>
        <li><a href="AllProducts.jsp">Home</a></li>
         <li><a href="Cart.jsp">Cart</a></li>
       <li class="active"><a href="PurchasedProducts.jsp">Purchased Products</a></li>
        <li><a href="index.html">Logout</a></li>
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
  <div id="homecontent" style="border:none;width:1200px">
      <%String email=(String)session.getAttribute("email");
     %>
      <h3 style="margin-bottom:20px;">Welcome to ONE TIME USER</h3>
      <h3 style="margin-bottom:20px;"><%=email%></h3>
      
   
            <center>
           
         
      
      <form action="Postproduct" method="post" enctype="multipart/form-data">
          <center><h2>PURCHASED PRODUCTS</h2>
          <table  style="margin-bottom:250px;">
              <tr><th>ID</th><th>Startup Name:</th><th>Category Name</th><th>Sub-Category</th><th>Product Name</th><th>No.Of. Product</th>
                  <th>Product Description</th><th>Date</th><th>Ambassador Image</th><th>Product Image</th><th>Rating</th></tr>
              <%
              String query="select * from cart where email='"+email+"'and status1!='waiting'";
              ResultSet r1=Queries.getExecuteQuery(query);
              while(r1.next()){
                  String pid=r1.getString("productid");
                  String status2=r1.getString("status2");
                 int rate=Integer.parseInt(status2);
                  
                  String qr="select * from products where id='"+pid+"'";
               ResultSet r=Queries.getExecuteQuery(qr);
              while(r.next()){   
                  %>
                  <tr>
                       <td><%=r.getString("id")%></td>
                      <td><%=r.getString("sname")%></td>
                      <td><%=r.getString("category")%></td>
                      <td><%=r.getString("scategory")%></td>
                      <td><%=r.getString("pname")%></td>
                      <td><%=r.getString("noofproducts")%></td>
                      <td><textarea cols="20" rows="10"><%=r.getString("description")%></textarea></td>
                      <td><%=r.getString("date")%></td>
                      <td><image src="view.jsp?id=<%=r.getString("id")%>" width="100" height="100"/></td>
                      <td><image src="view1.jsp?id=<%=r.getString("id")%>" width="100" height="100"/></td>
                      <td style="width:500px;">
                      <%for(int i=1;i<=rate;i++){
                      %>
                      <image src="images/star.gif" width="50" height="50" style="float:left;border:none"/>
                      <%
                      }%>
                     </td>
                      </tr>      
                  
                  
                  
                  <%
              }
}

              %>
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