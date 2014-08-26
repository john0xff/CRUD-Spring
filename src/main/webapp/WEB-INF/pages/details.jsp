<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
	<h1>Edit</h1>
	<p>Here you can get details about employee</p>
	
	<form:form commandName="employee">
		<table>
			<tbody>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName" readonly="true" /></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" readonly="true" /></td>
				</tr>
				<tr>
					<td>Position:</td>
					<td><form:input path="position" readonly="true" /></td>
				</tr>
				<tr>
					<td>Office:</td>
					<td><form:input path="office" readonly="true" /></td>
				</tr>
				<tr>
					<td>Start Date:</td>
					<td><form:input path="startDate" readonly="true" /></td>
				</tr>
				<tr>
					<td>Salary:</td>
					<td><form:input path="salary" readonly="true" /></td>
				</tr>
			</tbody>
		</table>
	</form:form>

	<a href="${pageContext.request.contextPath}/employee/list">Back</a> <br />
	<a href="${pageContext.request.contextPath}/home">Home page</a>
	
</body>
</html>