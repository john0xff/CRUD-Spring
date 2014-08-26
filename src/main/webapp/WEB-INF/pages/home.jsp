<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

<style type="text/css">
	.msg {
		padding: 15px;
		margin-bottom: 0px;
		margin-left: 20px;
		margin-right: 20px;
		border: 1px solid transparent;
		border-radius: 6px;
		color: #000000;
		background-color: #d9edf7;
		border-color: #0080ff;
	}
</style>

</head>
<body>
	<h1>Home page</h1>
	
	<c:if test="${not empty message}">
		<div class="msg">${message}</div>
	</c:if>
	
	<a href="${pageContext.request.contextPath}/employee/add">Add new employee</a> <br/>
	<a href="${pageContext.request.contextPath}/employee/list">Show employees list</a> <br/>
	
</body>
</html>