<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<style>
.error{
color:red;
font-size:10px;
font-family: 'Roboto', sans-serif;
font-weight:bold;
}

.button {
  background-color: #263238;
  border: none;
  color: white;
  padding:4px 8px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #62757f;
}
th, td {
  padding: 5px;
}
li {
  float: left;
}
table{
 background: white;
    padding: 55px;
    position: absolute;
    left: 32%;
    width: 37%;

}
li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-family: 'Roboto', sans-serif;
}

li a:hover {
  background-color: #263238;
  
}
</style>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Employee Search | Employee Management</title>
<link type = "text/css" rel = "stylesheet" href = "${pageContext.request.contextPath}/resources/css/style.css" >
</head>
<body>

<div id="wrapper">
		<div id="header">
		<ul>
  <li><a class="active" href="${pageContext.request.contextPath}/employee/list">Employee List</a></li>
  <li><a href="${pageContext.request.contextPath}/employee/addEmployee">Add New Employee</a></li>
  <li><a href="${pageContext.request.contextPath}/employee/searchForm">Search Employee</a></li>
   <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
</ul>
		</div>
		<h1 style="font-family: 'Roboto', sans-serif;font-weight:bold;">ADMIN CONSOLE</h1>
	</div>
<form:form action="searchEmployee">
<div>
<table style="
    position: absolute;
    top: 31%;
    right: 39%;
  	background-color:#FFFFFF;  
    padding: 4%;font-family: 'Roboto', sans-serif;"
>

<tr><th>RECORD NOT FOUND !</th></tr>
<tr>
<th>Enter the Employee ID</th>
</tr>
<tr>
<th>
<input type="text" name="id" />
</th>
</tr>
<tr>
<td><center><input type="submit" value="search" class="button"></center></td>
 </tr>
</table>
</div>
</form:form>


	

</body>
</html>