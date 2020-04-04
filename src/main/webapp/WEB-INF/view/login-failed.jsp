<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<style>
.button {
  background-color: #263238;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
}
body{
background: linear-gradient(45deg,#90a4ae, transparent);
}
th, td {
  padding: 10px;
}
table{

	font-family: 'Roboto', sans-serif;
}
</style>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Admin Login | Employee Management</title>
</head>
<body>
<h1 style="
    font-family: sans-serif;
    position: absolute;
    top: 17%;
    left: 30%;
    font-weight: bold;
">EMPLOYEE MANAGEMENT SYSTEM </h1>
<form:form action="sucess" modelAttribute="admin">
<div>
<table style="
    position: absolute;
    top: 31%;
    right: 39%;
  	background-color:#FFFFFF;  
    padding: 4%;">
    <tr>
    <td colspan="2"><center><b>Invalid Username or Password</b></center></td></tr>
<tr>
<th>USERNAME</th>
<td>
<input type="text" name="username" />
</td>
</tr>
<tr>
<th>PASSWORD</th>
<td><input type="password" name="password" /></td>
</tr>
<tr>
<td colspan="2"><center><input type="submit" value="login" class="button"></center></td>
 </tr>
</table>
</div>
</form:form>



</body>
</html>