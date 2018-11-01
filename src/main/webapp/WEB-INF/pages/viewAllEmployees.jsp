<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employees</title>
</head>
<body>
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>Name</td>
				<td>${item.name}</td>
			</tr>
			<tr>
				<td>Last name</td>
				<td>${item.lastname}</td>
			</tr>
			<tr>
				<td>Password</td>
				<td>${item.salary}</td>
			</tr>
			<tr>
				<td>Birth Month</td>
				<td>${item.birthMonth}</td>
			</tr>
			<tr>
				<td>Gender</td>
				<td>${item.gender}</td>
			</tr>
			<tr>
				<td>Country</td>
				<td>${item.country}</td>
			</tr>
			<tr>
				<td>Non-Smoking</td>
				<td>${item.nonSmoking}</td>
			</tr>

		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="form.mvc">Add a new employee</a>
</body>
</html>