<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>New Food</title>
</head>
<body>
<h2 align="center">Login Success</h2>
<h3>Hello <core:out value="${ login.uName}" /></h3>
<a class="btn btn-default" href="addFood" >Add Food Page</a>
<br/>
<a class="btn btn-default" href="foodSearch" >Food Search Page</a>
</body>
</html>