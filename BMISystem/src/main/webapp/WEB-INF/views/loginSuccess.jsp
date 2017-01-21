<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<html>
<head>
	<title>New Food</title>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<link rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/homeStyle.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/simple-sidebar.css">
</head>

<body class="bdy" >
    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="logreg">BMI System</a>
                </li>
                <li>
					<a href="settings" >Edit Settings Page</a>
                </li>
                <li>
					<a href="foodSearch" >Food Addition Page</a>
                </li>
                <li>
					<a href="showFood" >Users Food Showcase Page</a>
                </li>
                <li>
					<a href="activityList" >Add Activity Page</a>
                </li>
                <li>
					<a href="showActivity" >Users Activity Showcase Page</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 align="center">Login Success!</h1>
                        <h3>Hello <core:out value="${user.name} ${user.surName}" /></h3>
                        <p class="desc" ><b>Your BMI: <core:out value="${user.bmi}" /></b></p>
                        <p class="desc" ><b>Your Situation: You are 
							<core:choose>
						    <core:when test="${user.weightType.equals('O')}">
						        Overweight.
						        <br />
						    </core:when>
						    <core:when test="${user.weightType.equals('N')}">
						        Normal.
						        <br />
						    </core:when>
						    <core:otherwise>
						        Underweight.
						        <br />
						    </core:otherwise>
						</core:choose></b></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
</body>
</html>