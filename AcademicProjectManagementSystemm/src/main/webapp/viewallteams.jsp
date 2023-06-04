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
  <li><a class="active"  href="viewallteams">View All Teams</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br><br>

<h3 align=center><u>View All Teams</u></h3>

<table align=center border=2>

<tr>

<th>ID</th>
<th>Student1</th>
<th>Student2</th>
<th>Student3</th>
<th>Action</th>

</tr>

<c:forEach items="${teamlist}" var="team">

<tr>

<td> <c:out value="${team.id}"></c:out>   </td>
<td> <c:out value="${team.student1}"></c:out>   </td>
<td> <c:out value="${team.student2}"></c:out>   </td>
<td> <c:out value="${team.student3}"></c:out>   </td>
<td> 

<a href='<c:url value='viewallteams?id=${team.id}'></c:url>'>View</a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>

</body>
</html>

 
