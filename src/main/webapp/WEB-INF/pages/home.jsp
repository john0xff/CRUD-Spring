<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="${ pageContext.request.contextPath }/res/main.css" />

<title>Home</title>

</head>
<body>
	<fieldset id="container">
		
		<legend id="legend">
			<b>Home page</b>
		</legend>
		
		<c:if test="${not empty message}">
			<div class="msg">${message}</div>
		</c:if>
		
		<input class="blue-style-btn" type="button" value="Add new employee" 
		onclick="location.replace('${pageContext.request.contextPath}/employee/add')" />
		
		<input class="blue-style-btn" type="button" value="Show employees list" 
		onclick="location.replace('${pageContext.request.contextPath}/employee/list')" />
		
	</fieldset>
</body>
</html>