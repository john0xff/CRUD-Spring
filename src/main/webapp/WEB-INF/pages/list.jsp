<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	#employee {
	    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	    width: 100%;
	    border-collapse: collapse;
	}
	
	#employee td, #employee th {
	    font-size: 1em;
	    border: 1px solid #98bf21;
	    padding: 3px 7px 2px 7px;
	}
	
	#employee th {
	    font-size: 1.1em;
	    text-align: left;
	    padding-top: 5px;
	    padding-bottom: 4px;
	    background-color: #A7C942;
	    color: #ffffff;
	}
	
	#employee tr.alt td {
	    color: #000000;
	    background-color: #EAF2D3;
	}
</style>
</head>
<body>

	<h1>Employee list</h1>
	<table id="employee">
		<thead>
			<tr>
				<th width="5%">id</th>
				<th width="10%">Last Name</th>
				<th width="10%">First Name</th>
				<th width="10%">Position</th>
				<th width="10%">Office</th>
				<th width="10%">Start Date</th>
				<th width="10%">Salary</th>
				<th width="10%">Options</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="employee" items="${employees}">
			
				<c:if test="${ employee.id  % 2 == 0}">
					<tr class="alt">
						<td>${employee.id}</td>
						<td>${employee.lastName}</td>
						<td>${employee.firstName}</td>
						<td>${employee.position}</td>
						<td>${employee.office}</td>
						<td>${employee.startDate}</td>
						<td>${employee.salary}</td>
						<td>
							<a href="${pageContext.request.contextPath}/employee/detiles/${employee.id}">
								<img src="${pageContext.request.contextPath}/res/ico/details.png" 
								alt="Employee details." title="Employee details." width="32" height="32">
							</a>
							<a href="${pageContext.request.contextPath}/employee/update/${employee.id}">
								<img src="${pageContext.request.contextPath}/res/ico/update.png" 
								alt="Employee update." title="Employee details." width="32" height="32">
							</a>
							<a href="${pageContext.request.contextPath}/employee/delete/${employee.id}" >
								<img src="${pageContext.request.contextPath}/res/ico/delete.png" 
								alt="Employee delete." title="Employee details." width="32" height="32">
							</a>
						</td>
					</tr>
				</c:if>
				
				<c:if test="${ employee.id % 2 != 0 }">
					<tr>
						<td>${employee.id}</td>
						<td>${employee.lastName}</td>
						<td>${employee.firstName}</td>
						<td>${employee.position}</td>
						<td>${employee.office}</td>
						<td>${employee.startDate}</td>
						<td>${employee.salary}</td>
						<td>
							<a href="${pageContext.request.contextPath}/employee/detiles/${employee.id}">
								<img src="${pageContext.request.contextPath}/res/ico/details.png" 
								alt="Employee details." title="Employee details." width="32" height="32">
							</a>
							<a href="${pageContext.request.contextPath}/employee/update/${employee.id}">
								<img src="${pageContext.request.contextPath}/res/ico/update.png" 
								alt="Employee update." title="Employee update." width="32" height="32">
							</a>
							<a href="${pageContext.request.contextPath}/employee/delete/${employee.id}" >
								<img src="${pageContext.request.contextPath}/res/ico/delete.png" 
								alt="Employee delete." title="Employee delete." width="32" height="32">
							</a>
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>

	<a href="${pageContext.request.contextPath}/home">Home page</a>

</body>
</html>