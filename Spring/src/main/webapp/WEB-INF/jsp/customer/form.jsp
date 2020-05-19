<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<spring:url value="/customer/save" var="saveURL" />

	<form:form action="${saveURL }" method="POST"
		modelAttribute="customerForm">
		<form:hidden path="customerId" />
		<table>
			<tr>
				<td>FirstName</td>
				<td><form:input path="customerFirstName" /></td>
			</tr>
			<tr>
				<td>LastName</td>
				<td><form:input path="customerLastName" /></td>
			</tr>
			<tr>
				<td>Location:</td>
				<td><form:input path="location" /></td>
			</tr>
			<tr>
				<td>Contact No:</td>
				<td><form:input path="contactNo" /></td>
			</tr>
			<tr>
				<td></td>
				<td><button type="submit">Save</button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>