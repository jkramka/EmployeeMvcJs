<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Result</title>
</head>
<body> 
<h1 style = "font-family:arial;">Employee Information Result</h1>
    <table>
        <tr>
            <td>Name</td>
            <td>${e.name}</td>
        </tr>
        <tr>
            <td>Last name</td>
            <td>${e.lastname}</td>
        </tr>
        <tr>
            <td>Salary Per Year</td>
            <td>${e.salary}</td>
        </tr>
        <tr>
            <td>Birth Month</td>
            <td>${e.birthMonth}</td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>${e.gender}</td>
        </tr>
        <tr>
            <td>Country</td>
            <td>${e.country}</td>
        </tr>
        <tr>
            <td>Non-Smoking</td>
            <td>${e.nonSmoking}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">View all Employees</a>
</body>
</html>