<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

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
  <li><a href="adminhome">Home</a></li>
  <li><a class="active"  href="viewallemps">View All Mentors</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br><br>

<h3 align=center><u>View All Mentors</u></h3>

<table align=center border=2>

<tr>

<th>ID</th>
<th>Name</th>
<th>Gender</th>
<th>Date of Birth</th>
<th>Department</th>
<th>Designation</th>
<th>Salary</th>
<th>Location</th>
<th>Email ID</th>
<th>Username</th>
<th>Contact No</th>
<th>Action</th>

</tr>

<c:forEach items="${mentorlist}" var="mentor">

<tr>

<td> <c:out value="${mentor.id}"></c:out>   </td>
<td> <c:out value="${mentor.name}"></c:out>   </td>
<td> <c:out value="${mentor.gender}"></c:out>   </td>
<td> <c:out value="${mentor.dateofbirth}"></c:out>   </td>
<td> <c:out value="${mentor.department}"></c:out>   </td>
<td> <c:out value="${mentor.designation}"></c:out>   </td>
<td> <c:out value="${mentor.salary}"></c:out>   </td>
<td> <c:out value="${mentor.location}"></c:out>   </td>
<td> <c:out value="${mentor.emailid}"></c:out>   </td>
<td> <c:out value="${mentor.username}"></c:out>   </td>
<td> <c:out value="${mentor.contactno}"></c:out>   </td>
<td> 

<a href='<c:url value='deletementor?id=${mentor.id}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewmentorbyid?id=${mentor.id}'></c:url>'>View</a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>

</body>
</html>

 
