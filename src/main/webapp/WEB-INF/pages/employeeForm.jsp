<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>">	
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<title>Spring MVC Form Handling</title>
</head>
<body>
<h1>Employee Salary Form</h1>
<mvc:form modelAttribute="employee" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="name">Name</mvc:label></td>
	        <td><mvc:input path="name" /></td>
	        <td><mvc:errors path="name" cssClass="error" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="lastname">Last Name</mvc:label></td>
	        <td><mvc:input path="lastname" /></td>
	        <td><mvc:errors path="lastname" cssClass="error" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="salary">Salary</mvc:label></td>
	        <td><mvc:input path="salary" /></td>
	        <td><mvc:errors path="salary" cssClass="error" /></td>
	    </tr>
		<tr>
            <td><mvc:label path="birthMonth">Birth Month</mvc:label></td>
            <td><mvc:input path="birthMonth" /></td>
            <td><mvc:errors path="birthMonth" cssClass="error" /></td>
        </tr>
        <tr>
	        <td><mvc:label path="gender">Gender</mvc:label></td>
	        <td><mvc:radiobuttons path="gender" checked = "checked"/></td>	
	    </tr>
            <tr>
            <td><mvc:label path="country">Country</mvc:label></td>
            <td><mvc:select path="country" items="${countries}" /></td>
            <td><mvc:errors path="country" cssClass="error" /></td>
        </tr>
        <tr>
            <td><mvc:label path="nonSmoking">Non Smoking</mvc:label></td>
            <td><mvc:checkbox path="nonSmoking" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Employees</a>

</body>
</html>