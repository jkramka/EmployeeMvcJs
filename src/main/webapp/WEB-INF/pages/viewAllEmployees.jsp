<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>">	
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<style>
.tablelist table{
	border: none;
	font-family: arial;
	color:navy;
}
</style>

<title>All Employees</title>
</head>
<body>
<h1>All Employees</h1>
<mvc:form modelAttribute="employee" action="delete.mvc">

	<c:forEach items="${all}" var="item">
	<div class="tablelist">
		<table>
			<tr>
			    <td><input type="radio" name="id" value="${item.id}"></td>
				<td>${item.name}</td>
 				<td>${item.lastname}</td>
				<td>${item.salary}</td>
				<td>${item.birthMonth}</td>
				<td>${item.gender}</td>
				<td>${item.country}</td>
				<td>${item.nonSmoking}</td> 
			</tr>
		</table>
		</div>
		</c:forEach>
		
		<br />
		<input type = "submit" value = "Delete Selected Item" />
		<td><mvc:errors path="id" cssClass="error" /></td>
</mvc:form>
		
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	<a href="form.mvc">Add a new employee</a>
</body>
</html>