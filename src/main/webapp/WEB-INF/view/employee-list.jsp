<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
table{
	background-color:#FFFFFF;
	border-collapse:collapse;
	border-bottom:1px solid gray;
	font-family: 'Roboto', sans-serif;
    position: absolute;
    left: 1%;
    width:98%;
    top:18%
    
}
th, td {
  padding: 15px;
  border-collapse:collapse;
border:1px solid gray;
}
th{

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
<title>Employee List | Employee Management</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>
<% session=request.getSession(false);

%>
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
	<table>
		<tr>
			<th>EMPLOYER ID</th>
			<th>FIRST NAME</th>
			<th>LAST NAME</th>
			<th>EMAIL ID</th>
			<th>CONTACT NUMBER</th>
			<th>GENDER</th>
			<th>AGE</th>
			<th>JOB LOCATION</th>
			<th>BUSINESS UNIT</th>
			<th>PROJECT ID</th>
			<th>JOB TITLE</th>
			<th>DATE OF JOINING</th>
			<th>SALARY</th>
			<th>ACTION</th>
		</tr>
		<c:forEach var="te" items="${employee}">
			<!-- update link -->
			<c:url var="updateLink" value="/employee/updateEmployee">
				<c:param name="id" value="${te.employee_id}" />
			</c:url>
			<c:url var="deleteLink" value="/employee/deleteEmployee">
				<c:param name="id" value="${te.employee_id}" />
			</c:url>
			<tr>
				<td>${te.employee_id}</td>
				<td>${te.firstName}</td>
				<td>${te.lastName}</td>
				<td>${te.mail_id}</td>
				<td>${te.contact_number}</td>
				<td>${te.gender}</td>
				<td>${te.age}</td>
				<td>${te.job_location}</td>
				<td>${te.bu}</td>
				<td>${te.project_id}</td>
				<td>${te.title}</td>
				<td>${te.doj}</td>
				<td>${te.salary}</td>
				
		
				<td><button class="button" onclick="window.location.href = '${updateLink}';">Update</button> <br> <button class="button" onclick="window.location.href = '${deleteLink}';">Delete</button>
			</tr>
		</c:forEach>
	</table>
</body>
</html>