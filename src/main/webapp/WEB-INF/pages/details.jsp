<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="${ pageContext.request.contextPath }/res/main.css" />

<title>Details</title>
</head>
<body>
	<fieldset id="container" style="margin-top: 50px;">
	
		<legend id="legend">
			<b>Employee details</b>
		</legend>
	
		<form:form class="account-form" commandName="employee">
			
			<div class="account-info">
				<label> Last Name: </label>
				<form:input path="lastName" class="input-fields" readonly="true" />
				
				<label> First Name: </label>
				<form:input path="firstName" class="input-fields" readonly="true" />
				
				<label> Position: </label>
				<form:input path="position" class="input-fields" readonly="true" />
				
				<label> Office: </label>
				<form:input path="office" class="input-fields" readonly="true" />
				
				<label> Start Date: </label>
				<form:input path="startDate" class="input-fields" readonly="true" />
				
				<label> Salary: </label>
				<form:input path="salary" class="input-fields" readonly="true" />
			</div>
			
			<div class="account-login-btn">
				<input class="blue-style-btn" type="button" value="Back" 
				onclick="location.replace('${pageContext.request.contextPath}/employee/list')" />
				
				<input class="blue-style-btn" type="button" value="Home page"
				onclick="location.replace('${pageContext.request.contextPath}/home')" />
			</div>
			
		</form:form>
	</fieldset>
</body>
</html>