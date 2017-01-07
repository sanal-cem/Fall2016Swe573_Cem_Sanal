<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<html>
<head>
	<title>Your Foods</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<link rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
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
					<a href="foodSearch" >Food Search Page</a>
                </li>
                <li>
					<a href="addFood" >Add Food Page</a>
                </li>
                <li>
					<a href="showFood" >Users Food Showcase Page</a>
                </li>
                <li>
					<a href="addActivity" >Add Activity Page</a>
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
     					<div class="col-xs-3">
							<h2 align="center">Your Foods</h2>
							<hr />
							<p class="desc"><b>User Name:</b> <core:out value="${showFood.uName}" /></p>
							<p class="desc"><b>Food Offset:</b> <core:out value="${showFood.offset}" /></p>
							<p class="desc"><b>Food Group:</b> <core:out value="${showFood.group}" /></p>
							<p class="desc"><b>Food Name:</b> <core:out value="${showFood.name}" /></p>
							<p class="desc"><b>Food NDbNo:</b> <core:out value="${showFood.ndbno}" /></p>
							<p class="desc"><b>Food Ds:</b> <core:out value="${showFood.ds}" /></p>
							<p class="desc"><b>Food Calory:</b> <core:out value="${showFood.fCalory}" /></p>
							<p class="desc"><b>Food Ingredients:</b> <core:out value="${showFood.fIngred}" /></p>
						</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>

</body>
</html>