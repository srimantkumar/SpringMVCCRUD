<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer View Page</title>
</head>
<body>
	<div align="center">
		<spring:url value="/customer/add" var="addURL" />
		<a href="${addURL }">Add New Customer</a>
	</div>

	<table width="100%" border="1">
		<tr>
			<td>ID</td>
			<td>FirstNames</td>
			<td>LastName</td>
			<td>Location</td>
			<td>Contact NO</td>
			<td colspan="2">Action</td>
		</tr>
		<c:forEach items="${list }" var="customer">
			<tr>
				<td>${customer.customerId }</td>
				<td>${customer.customerFirstName }</td>
				<td>${customer.customerLastName }</td>
				<td>${customer.location }</td>
				<td>${customer.contactNo }</td>
				<td><spring:url value="/customer/update/${customer.customerId }"
						var="updateURL" /> <a href="${updateURL }">Update</a></td>
				<td><spring:url value="/customer/delete/${customer.customerId }"
						var="deleteURL" /> <a href="${deleteURL }">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>