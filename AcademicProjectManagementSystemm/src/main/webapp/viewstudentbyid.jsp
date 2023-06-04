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
  <li><a class="active" href="adminhome">Home</a></li>
  <li><a href="viewallstudent">View All Students</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br>



<br>

<table align=center>

<tr><th>ID:</th>&nbsp;<td>${student.id}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${student.name}</td></tr>
<tr><th>Gender:</th>&nbsp;<td>${student.gender}</td></tr>
<tr><th>Date of Birth:</th>&nbsp;<td>${student.dateofbirth}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${student.branch}</td></tr>
<tr><th>Designation:</th>&nbsp;<td>${student.cgpa}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${student.emailid}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${student.contactno}</td></tr>


</table>



</body>
</html>

 
