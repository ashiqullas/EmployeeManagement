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
<title>Employee Update | Employee Management</title>
<link type = "text/css" rel = "stylesheet" href = "${pageContext.request.contextPath}/resources/css/style.css" >
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
   <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li></ul>
		</div>
		<h1 style="font-family: 'Roboto', sans-serif;font-weight:bold;">ADMIN CONSOLE</h1>
	</div>
	<br>
	<form:form action = "saveEmployee" modelAttribute = "employee" method = "POST" >
	
		<table>
			<tbody>
			 	
					
					<form:input path = "employee_id" type="hidden"/>
				 
				<tr>
					<td><label>First Name</label></td>
					<td><form:input path = "firstName"/><form:errors path="firstName" cssClass="error"/></td>
					
				</tr> 
				
				<tr>
					<td><label>Last Name</label></td>
					<td><form:input path = "lastName"/><form:errors path="lastName" cssClass="error"/></td>
				</tr> 
				<tr>
					<td><label>Mail id</label></td>
					<td><form:input path = "mail_id" type="email" /><form:errors path="mail_id" cssClass="error"/></td>
				</tr> 
				<tr>
					<td><label>Contact Number</label></td>
					<td><form:input path = "contact_number" /><form:errors path="contact_number" cssClass="error"/></td>
				</tr> 
				<tr>
					<td><label>Gender</label></td>
					<td>Male<form:radiobutton path = "gender" value="male"/>| Female<form:radiobutton  path = "gender" value="female"/>
					<form:errors path="gender" cssClass="error"/>
					</td>
				</tr> 
				<tr>
					<td><label>Age</label></td>
					<td><form:input path = "age" /><form:errors path="age" cssClass="error"/></td>
				</tr> 
				<tr>
					<td><label>Job Location</label></td>
					<td><form:select path="job_location">  
        <form:option value="Kochi" label="Kochi"/>  
        <form:option value="Chennai" label="Chennai"/>  
        <form:option value="Mumbai" label="Mumbai"/>  
        <form:option value="Delhi" label="Delhi"/>  
        </form:select>  <form:errors path="job_location" cssClass="error"/></td>
				</tr> 
				<tr>
					<td><label>Business Unit</label></td>
					<td><form:select path="bu">  
        <form:option value="Sales" label="Sales"/>  
        <form:option value="Customer Care" label="Customer Care"/>  
        <form:option value="Developer" label="developer"/>  
        <form:option value="Marketing" label="Marketing"/>  
        </form:select>  <form:errors path="bu" cssClass="error"/></td>
				</tr> 
				<tr>
					<td><label>Project ID</label></td>
					<td><form:select path="project_id">  
        <form:option value="100" label="100"/>  
        <form:option value="101" label="101"/>  
        <form:option value="102" label="102"/>  
        <form:option value="103" label="103"/>  
        </form:select>  <form:errors path="project_id" cssClass="error"/></td>
				</tr> <tr>
					<td><label>Job Title</label></td>
					<td><form:input path = "title" /><form:errors path="title" cssClass="error"/></td>
				</tr> 
			
				
				<tr>
					<td><label>Date of Joining</label></td>
					<td><form:input path = "doj" type="date"/><form:errors path="doj" cssClass="error"/></td>
				</tr> 
				<tr>
					<td><label>Salary</label></td>
					<td><form:input path = "salary"/><form:errors path="salary" cssClass="error"/></td>
				</tr> 
				
								
				<tr>
					<td colspan="2"><center><input type = "submit" value = "Save" class = "button" /></center></td>
				</tr> 
			</tbody>
		</table>
	
	
	</form:form>
	

</body>
</html>