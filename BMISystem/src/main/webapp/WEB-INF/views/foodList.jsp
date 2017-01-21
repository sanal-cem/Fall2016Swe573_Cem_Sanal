<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<html>
<head>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/homeStyle.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/simple-sidebar.css">
	<link rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/datatable.css">
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
            <div class="col-lg-12">
				<h2 align="center">Add Foods</h2>
				<hr />
				<table class="paginated" >
				<tbody>
				<!-- Shows Food, Nutrient and Measure information. -->
				<core:forEach var="food" items="${foodList.getFoodList()}">
					<tr><td>
				    <p class="desc"><b>Food Name: </b><b><core:out value="${food.name}"/></b></p>
				    </td></tr>
				    <tr><td>
				    <p class="desc"><b>Food Weight: </b><b><core:out value="${food.weight}"/></b></p>
				    </td></tr>
				    <tr><td>
				    <p class="desc"><b>Food Calory: </b><b><core:out value="${food.fCalory}"/></b></p>
					</td></tr>
					<tr><td>
						<form:form method="GET" commandName="addFood" action="addFood" modelAttribute="foodName, amount">
							<input class="hidden" type="text" name="foodName" value="${food.name}"></input>
							<p class="desc"><b>Food Amount: <input class="ui-button numbersOnly" type="text" name="amount" /></b></p>
				            <input class="ui-button ui-widget ui-corner-all" type="submit" value="Add Food"></input>
			        	</form:form>
			        </td></tr>
			        <tr><td>
				    <core:forEach var="nutrient" items="${fNutrList.getFNutrListFood(food.ndbno)}">
					    <p class="desc"><b>Nutrient Name: <core:out value="${nutrient.nname}"/></b></p>
					    <p class="desc"><b>Nutrient Unit: <core:out value="${nutrient.nunit}"/></b></p>
						<p class="desc"><b>Nutrient Value: <core:out value="${nutrient.nvalue}"/></b></p>
						<br/>
						<core:forEach var="measure" items="${fNutmsrList.getFNutMeasureListFNutr(nutrient.nid)}">
							<p class="desc"><b>Measure id: <core:out value="${measure.nid}"/></b></p>
						    <p class="desc"><b>Measure Label: <core:out value="${measure.label}"/></b></p>
						    <p class="desc"><b>Measure Value: <core:out value="${measure.value}"/></b></p>
						    <br/>
					    </core:forEach>
		    		</core:forEach>
		    		</td></tr>
			    </core:forEach>
			    </tbody>
			    </table>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/datatable.js">
</script>
<script type="text/javascript">
	$( function() {
		$( ".numbersOnly" ).keyup(function () {
		   if (this.value != this.value.replace(/[^0-9\.]/g, '')) {
		      this.value = this.value.replace(/[^0-9\.]/g, '');
		   }
		});
	});
</script>
</html>
