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
						<h2 align="center">Your Foods</h2>
						<hr />
						<!-- Shows Food, Nutrient and Measure information. -->
						<core:forEach var="food" items="${foodList.getFoodList()}">
						    <p class="desc"><b>Food Name:</b> <core:out value="${food.name}"/></p>
						    <p class="desc"><b>Food Weight:</b> <core:out value="${food.weight}"/></p>
						    <p class="desc"><b>Food Calory:</b> <core:out value="${food.fCalory}"/></p>

						    <hr style="border: 1px solid #33FF49;" >
						    <core:forEach var="nutrient" items="${fNutrList.getFNutrList()}">
							    <p class="desc"><b>Nutrient Name:</b> <core:out value="${nutrient.nname}"/></p>
							    <p class="desc"><b>Nutrient Unit:</b> <core:out value="${nutrient.nunit}"/></p>
								<p class="desc"><b>Nutrient Value:</b> <core:out value="${nutrient.nvalue}"/></p>
								<hr style="border: 1px solid #334FFF;" >
								
								<core:forEach var="measure" items="${fnutmsrList.getFNutMeasureList()}">
									<p class="desc"><b>Measure id:</b> <core:out value="${measure.nid}"/></p>
								    <p class="desc"><b>Measure Label:</b> <core:out value="${measure.label}"/></p>
								    <p class="desc"><b>Measure Value:</b> <core:out value="${measure.value}"/></p>
							    <hr style="border: 1px solid #9F33FF;" >
							    </core:forEach>
						    </core:forEach>
						    <br />
						    <br />
					    </core:forEach>
					</div>
                   </div>
               </div>
           </div>
       </div>
       <!-- /#page-content-wrapper -->
</body>
</html>