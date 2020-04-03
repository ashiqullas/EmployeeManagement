<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

li {
  float: left;
}
table{
background: white;
    padding: 55px;
    position: absolute;
    left: 23%;
    width: 52%;
}
tr, th, td {
    padding: 11px;
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
tr,td{

border: 1px solid grey;
    border-collapse: collapse;
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
	<br>
	<c:forEach var="te" items="${empList}">
	<form:form action = "saveEmployee" modelAttribute = "employee" method = "POST" >
	
		<table style="font-family: 'Roboto', sans-serif; border-collapse:collapse;">
			<tbody>
			 	
					
					<tr>
					<th colspan="2">Showing Details of ${te.employee_id}</th>					
				</tr>
				 
				<tr>
					<td><label>First Name</label></td>
					<td>${te.firstName}</td>
					
				</tr> 
				
				<tr>
					<td><label>Last Name</label></td>
					<td>${te.lastName}</td>
				</tr> 
				<tr>
					<td><label>Mail id</label></td>
					<td>${te.mail_id}</td>
				</tr> 
				<tr>
					<td><label>Contact Number</label></td>
					<td>${te.contact_number}</td>
				</tr> 
				<tr>
					<td><label>Gender</label></td>
					<td>${te.gender}
					</td>
				</tr> 
				<tr>
					<td><label>Age</label></td>
					<td>${te.age}</td>
				</tr> 
				<tr>
					<td><label>Job Location</label></td>
					<td>${te.job_location}</td>
				</tr> 
				<tr>
					<td><label>Business Unit</label></td>
					<td>${te.bu}</td>
				</tr> 
				<tr>
					<td><label>Project ID</label></td>
					<td>${te.project_id}</td>
				</tr> <tr>
					<td><label>Job Title</label></td>
					<td>${te.title}</td>
				</tr> 
			
				
				<tr>
					<td><label>Date of Joining</label></td>
					<td>${te.doj}</td>
				</tr> 
				<tr>
					<td><label>Salary</label></td>
					<td>${te.salary}</td>
				</tr> 
				
								
				
				
			</tbody>
		</table>
	
	
	</form:form>
		</c:forEach> 
	

</body>
</html>