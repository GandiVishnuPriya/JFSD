<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en-us">
    <head>
        <meta charset="UTF-8">
        <title>Add Mentor</title>
        <link rel="stylesheet" href="./responsiveRegistration.css">
        <script type="text/javascript" lang="javascript" src="./responsiveRegistaration.js"></script>

        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 20px 30px;
  border-radius: 15px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 50px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
   width=5%;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background-color: #CCCCFF;
  border: none;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}
        </style>
    
    </head>
       
    <body>
       <form:form action="addmentor" method="post" modelAttribute="mentor"> 
        <center>
        <h1 align="center">Mentor Registration Form</h1>
	
        <div class="container">
            <div class="row">
                <div class="col-10">
                    <label for="name">Name: &nbsp; &nbsp; </label>
                    <form:input id="name" path="name" placeholder="Enter your name"/>
                </div>
               
            </div>
            <br>
            <div class="row">
                <div class="col-10">
                    <label for="id">ID: &nbsp; &nbsp; </label>
                    <form:input id="id" path="id" placeholder="Enter id"/>
                </div>
               
            </div>
            <br>
            <div class="row">
                <div class="col-10">
                    <label for="gender" required>Gender: &nbsp; &nbsp; </label>
                
                    <form:select path="gender" id="gender">
                        <form:option value=" ">Select Gender: </form:option>
                        <form:option value="Male">Male</form:option>
                        <form:option value="Female">Female</form:option>
                        </form:select>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-10">
                    <label for="dob">Date Of Birth: &nbsp; &nbsp; </label>
               
                    <form:input id="dateofbirth" path="dateofbirth"/>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-10">
                    <label for="department" required >Department:</label>
                
                    <form:select path="department" id="department">
                        <form:option value=" ">Select Department: &nbsp; &nbsp; </form:option>
                        <form:option value="CSE">CSE</form:option>
                        <form:option value="CSIT">CSIT</form:option>
                        <form:option value="MECH">MECH</form:option>
                        <form:option value="CIVIL">CIVIL</form:option>
                        <form:option value="AIDS">AIDS</form:option>
                        <form:option value="ELECTRICAL">ELECTRICAL</form:option>
                    </form:select>
                </div>
            </div>
            
            <br>
            <div class="row">
            	<div class="col-10">
            		<label for="designation">Designation: &nbsp; &nbsp;</label>
            		
            		<form:select path="designation" required="required">
						<form:option value="-1">---Select---</form:option>
						<form:option value="HOD">HOD</form:option>
						<form:option value="ASST HOD">ASST HOD</form:option>
						<form:option value="CC">CC</form:option>
						<form:option value="PROFESSOR">PROFESSOR</form:option>
						<form:option value="ASST PROFESSOR">ASST PROFESSOR</form:option>
					</form:select>
            	</div>
            </div>
            <br>
            <div class="row">
                <div class="col-10">
                    <label for="salary">Salary: &nbsp; &nbsp; </label>
                
                    <form:input path="salary" value="0.00" required="required"/>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-10">
                    <label for="location">Location: &nbsp; &nbsp; </label>
                
                    <form:input path="location" required="required"/>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-10">
                    <label for="emailid">Email: &nbsp; &nbsp; </label>
                
                    <form:input id="emailid" path="emailid" placeholder="it should contain @,."/>
                </div>
            </div>
            <br>
            <div class="row">
            	<div class="col-10">
            		<label for="username">Username: &nbsp; &nbsp; </label>
            		<form:input id="usename" path="username" placeholder="Enter a username"/>
            	</div>
            </div>
            <br>
            <div class="row">
                <div class="col-10">
                    <label for="password">Password: &nbsp; &nbsp; </label>
                
                    <form:password id="password" path="password" maxlength="8"/>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-10">
                    <label for="contactno">Mobile: &nbsp; &nbsp;  </label>
                
                    <form:input id="contactno" path="contactno" placeholder="only 10 digits are allowed"/>
                </div>
            </div>
           
            <div class="row">
                <input type="submit" value="Register" class="button"/>
            </div>  
        </div>  
        </div>
        </center>
        </form:form>
    </body>
</html>