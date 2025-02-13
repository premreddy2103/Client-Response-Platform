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
      <div class="topbox">
        <h2>CLIENT RESPONSE PLATFORM</h2>
        <p align="justify">Customer feedback is information provided by clients about whether they are satisfied or dissatisfied with a product or service and about general experience they had with a company. Their opinion is a resource for improving customer experience and adjusting your actions to their needs</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
      <div class="topbox">
        <h2>One Time Customer</h2>
        <form action="OTCust.jsp" method="post">
          <fieldset>
          
            <label for="teachername">Name:
              <input type="text" name="name" id="teachername" value="" />
            </label>
            <label for="teacherpass">Mobile Number:
              <input type="number" name="mobile" id="teacherpass" value="" />
            </label>
              <label for="teacherpass">Email ID:
              <input type="email" name="email" id="teacherpass" value="" />
            </label>
           
            <p>
              <input type="submit" name="teacherlogin" id="teacherlogin" value="OK" />
              &nbsp;
              <input type="reset" name="teacherreset" id="teacherreset" value="Reset" />
            </p>
          </fieldset>
        </form>
      </div>
      <div class="topbox last">
        <h2>Regular Customer</h2>
        <form action="RegularCust.jsp" method="post">
          <fieldset>
           
            <label for="pupilname">Email ID:
              <input type="text" name="pupilname" id="pupilname" value="" />
            </label>
            <label for="pupilpass">Password:
              <input type="password" name="pupilpass" id="pupilpass" value="" />
            </label>
            
            <p>
              <input type="submit" name="pupillogin" id="pupillogin" value="Login" />
              &nbsp;
              <input type="reset" name="pupilreset" id="pupilreset" value="Reset" />
            </p>
               <a href="RegularReg.jsp">Register Here</a>
          </fieldset>
        </form>
      </div>
      <br class="clear" />
    </div>
    <div id="loginpanel">
      <ul>
        <li class="left">Log In Here &raquo;</li>
        <li class="right" id="toggle"><a id="slideit" href="#slidepanel">Customers</a><a id="closeit" style="display: none;" href="#slidepanel">Close Panel</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="index.html">Customer FeedBack System</a></h1>
    
    </div>
    <div id="topnav">
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="Admin.jsp">Admin</a></li>
        <li class="active"><a href="StartUp.jsp">StartUp</a></li>
        <li><a href="#" title="Please Select Above">One Time Customer</a></li>
        <li><a href="#" title="Please Select Above">Regular Customer</a></li>
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
    <div class="fl_left">
      <div class="column2">
        <ul>
          <li>
            <h2>Cutomer Rating</h2>
            <div class="imgholder"><img src="images/customer.jpg" width="240" height="130" alt="" /></div>
            <p align="justify">A customer review is a review of a product or service made by a customer who has purchased and used, or had experience with, the product or service. Customer reviews are a form of customer feedback on electronic commerce and online shopping sites</p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </li>
          <li class="last">
            <h2>Customer Review</h2>
            <div class="imgholder"><img src="images/Customer-Reviews.jpg" width="240" height="130"  alt="" /></div>
            <p align="justify">The reliability of customer reviews has been questioned.Abuses akin to ballot stuffing of favourable reviews by the seller, or negative reviews by competitors, need to be policed by the review host site.</p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </li>
        </ul>
        <br class="clear" />
      </div>
      <div class="column2">
        <h2>About This Project !</h2>
      
        <p align="justify">Customer needs and expectations are constantly evolving, and thus customer feedback is vital for customer centric businesses.Opinion Plus is an advanced customer feedback system that serves to bridge.</p> 
      </div>
    </div>
      <div class="fl_right">
         <form action="RegularREgAction.jsp" method="post">
             <h3>Regular Customer REGISTER</h3>
             <table>
                 <tr><th>Name:</th><td><input type="text" name="name" required=""></input></td></tr>
                 <tr><th>Email:</th><td><input type="email" name="email" required=""></input></td></tr>
                 <tr><th>Mobile:</th><td><input type="number" name="mobile" required=""></input></td></tr>
                 <tr><th>Password:</th><td><input type="password" name="pass" required=""></input></td></tr>
                 <tr><th></th><td><input type="submit" value="Register"></input>
                     <input type="reset" value="Reset"></input></td></tr>
             
             </table>
        </form> 
      </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->


<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    
  </div>
</div>
</body>
</html>