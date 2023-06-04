<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<style>

body{
 background-color: none;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: none;
}

li {
  float: right;
  
}

li a, .dropbtn {
  display: inline-block;
  color: white;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active{
background-color: white;
color: white;
}
li a:hover , .dropdown:hover .dropbtn{
  background-color: none;
  color: #8EB7D4;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: none;
  min-width: 160px;
  box-shadow: 5px 8px 10px 0px black;
 }

.dropdown-content a {
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
background-color: black;
color: #8EB7D4;
}

.dropdown:hover .dropdown-content {
  display: block;
}
h1,h2,h3{
text-align:left; 
color: white;
}

</style>
</head>
<body>
<body style="background: url(images/BG03.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover   ;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">
  
<div id="navbar-animmenu">
    <ul class="show-dropdown main-navbar">
        <div class="hori-selector">
        <div class="left"></div><div class="right"></div></div>
         <li><a href="adminlogin">Logout</a></li>
       
  <li class="dropdown">
    <a href="adminlogin" class="dropbtn">Admin</a>
    <div class="dropdown-content">
      <a href="studentregistration">Student Registration</a>
  <a href="mentorregistration">Mentor Registration</a>
  <a href="viewallmentor">View All Mentors</a>
  <a href="viewallstudent">View All Students</a>
    </div>
         <li><a href="projectregistration">Add Project</a></li>
    
     <li><a href="/">Home</a></li>
        
        
    </ul>
</div>

<br>

<h1 align=right>Welcome&nbsp;<c:out value="${auname}"></c:out></h1>

</body>
</html>

 
