<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: black;
}

li {
  float: left;
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
color: black;
}
li a:hover , .dropdown:hover .dropbtn{
  background-color: white;
  color: black;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: black;
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
background-color: white;
color:black;
}

.dropdown:hover .dropdown-content {
  display: block;
}
h1,h2,h3{
text-align:center; 
color: white;
}
</style>
</head>
<body>
<body style="background: url(images/studenthome.jpg) no-repeat center center fixed; 
  -webkit-background-size: auto   ;
  -moz-background-size: auto;
  -o-background-size: auto;
  background-size: 1580px 750px;">


<ul>
  <li><a class="active" href="studenthome">Home</a></li>
  <li class="dropdown">
    <a href="studenthome" class="dropbtn">Student</a>
    <div class="dropdown-content">
      <a href="viewstudent">View Profile</a>
      <a href="schangepwd">Change Password</a>
    </div>
      <li><a href="teamregistration">Team Registration</a></li>
       <li><a href="mentorallocation">Project Selection</a></li>
    
  <li><a href="studentlogin">Logout</a></li>
</ul>

<br>

<h1 align=center>Welcome&nbsp;<c:out value="${euname}"></c:out></h1>

</body>
</html>

 
