<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Registration Success</title>
</head>
<body>
<h2 align="center">Registration Success</h2>
<h3>Hello <core:out value="${ registration.uName}" /></h3>
</body>
</html>