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
  background-color: white;
}

li {
  float: left;
}

li a, .dropbtn {
  display: inline-block;
  color: black;
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
  background-color: black;
  color: white;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: white;
  min-width: 160px;
  box-shadow: 5px 8px 10px 0px black;
 }

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
background-color: black;
color:white;
}

.dropdown:hover .dropdown-content {
  display: block;
}
h1,h2,h3{
text-align:center; 
color: black;
}
</style>
</head>
<body>
<body style="background: url(images/mentorhome.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover   ;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">


<ul>
  <li><a class="active" href="mentorhome">Home</a></li>
  <li class="dropdown">
    <a href="mentorhome" class="dropbtn">Mentor</a>
    <div class="dropdown-content">
      <a href="viewmen">View Profile</a>
      <a href="mchangepwd">Change Password</a>
            <a href="viewallteams">View Student Teams</a>
    </div>
  
  
  <li><a href="mentorlogin">Logout</a></li>
</ul>

<br>

<h3 align=right>Welcome&nbsp;<c:out value="${euname}"></c:out></h3>

</body>
</html>

 
