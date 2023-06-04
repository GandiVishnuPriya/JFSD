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
  <li><a class="active"  href="viewallproject">View All Projects</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br><br>

<h3 align=center><u>View All Projects</u></h3>

<table align=center border=2>

<tr>

<th>ID</th>
<th>Name</th>
<th>Description</th>
<th>Mentor id</th>


</tr>

<c:forEach items="${projectlist}" var="project">

<tr>

<td> <c:out value="${project.id}"></c:out>   </td>
<td> <c:out value="${project.name}"></c:out>   </td>
<td> <c:out value="${project.description}"></c:out>   </td>
<td> <c:out value="${project.mentorid}"></c:out>   </td>
<td> 

<%-- <a href='<c:url value='deletementor?id=${project.id}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewmentorbyid?id=${project.id}'></c:url>'>View</a>&nbsp;&nbsp; --%>

</td>


</tr>

</c:forEach>

</table>

</body>
</html>

 
