<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<style>
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: #CCCCFF;
}

li 
{
  float: left;
    border-right: 1px solid blue;
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}
li a:hover {
  background-color: black;
  color: white;
}
</style>
</head>
<body>


<ul>
  <li><a href="mentorhome">Home</a></li>
  <li><a class="active" href="viewmentor">View Profile</a></li>
  <li><a href="echangepwd">Change Password</a></li>
   <li><a href="mentorlogin">Logout</a></li>
</ul>

<br>

<h3 align=right>Welcome&nbsp;<c:out value="${euname}"></c:out></h3>

<br>

<table align=center>

<tr><th>ID:</th>&nbsp;<td>${men.id}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${men.name}</td></tr>
<tr><th>Gender:</th>&nbsp;<td>${men.gender}</td></tr>
<tr><th>Date of Birth:</th>&nbsp;<td>${men.dateofbirth}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${men.department}</td></tr>
<tr><th>Designation:</th>&nbsp;<td>${men.designation}</td></tr>
<tr><th>Salary:</th>&nbsp;<td>${men.salary}</td></tr>
<tr><th>Location:</th>&nbsp;<td>${men.location}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${men.emailid}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${men.contactno}</td></tr>



</table>



</body>
</html>

 
