<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="${ pageContext.request.contextPath }/res/main.css" />

<title>Add</title>
</head>
<body>
	<fieldset id="container" style="margin-top: 50px;">
	
		<legend id="legend">
			<b>Add new employee</b>
		</legend>	
	
		<form:form class="account-form" method="POST" commandName="employeeModel" action="${pageContext.request.contextPath}/employee/add">
			
			<div class="account-info">
				<label> Last Name: </label>
				<form:input path="lastName" class="input-fields" autofocus="autofocus" />
				
				<label> First Name: </label>
				<form:input path="firstName" class="input-fields" />
				
				<label> Position: </label>
				<form:input path="position" class="input-fields" />
				
				<label> Office: </label>
				<form:input path="office" class="input-fields" />
				
				<label> Start Date: </label>
				<form:input path="startDate" class="input-fields" />
				
				<label> Salary: </label>
				<form:input path="salary" class="input-fields" />
			</div>
			
			<div class="account-login-btn">
				<input class="blue-style-btn" type="submit" value="Add" />
				
				<input class="blue-style-btn" type="button" value="Home page"
				onclick="location.replace('${pageContext.request.contextPath}/home')" />
			</div>
			
		</form:form>
		
	</fieldset>
</body>
</html>