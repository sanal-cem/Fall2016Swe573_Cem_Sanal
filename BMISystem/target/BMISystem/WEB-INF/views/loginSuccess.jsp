<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title>New Food</title>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jsapi.js"></script>
	<script type="text/javascript">
		google.load("visualization", "1", {packages:["corechart"]});
		google.setOnLoadCallback(drawChart);
		function drawChart() {
	
			var data = new google.visualization.DataTable();
			data.addColumn('string', 'Date');
 			data.addColumn('number', 'Weight');
			data.addColumn('number', 'BMI');
			data.addRows([
				<core:forEach var="uHist" items="${uHistList.getUHistList()}">
					[ '<fmt:formatDate value="${uHist.IDate}" pattern="dd-MM-yyyy"/>', ${uHist.weight}, ${uHist.bmi} ],
				</core:forEach>
			]);
	        var options = {
	        	'title' : 'Your BMI Graph',
	        	is3D : true,
	        	tooltip :  {showColorCode: true},
	        	'width' : 1000,
	        	'height' : 540,
	        	'min' : 0,
	        };
	        
	        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div0'));
	
	        chart.draw(data, options);
	      }
	</script>
	<script type="text/javascript">
		google.load("visualization", "1", {packages:["corechart"]});
		google.setOnLoadCallback(drawChart);
		function drawChart() {
	
			var data = new google.visualization.DataTable();
			data.addColumn('number', 'Burned Calorie');
 			data.addColumn('number', 'Gained Calorie');
			data.addRows([
				<core:forEach var="actList" items="${uActList.getUActList()}">
					[ ${uActList.calorie} ]
				</core:forEach>
				<core:forEach var="foodList" items="${foodList.getFoodList()}">
					[ ${foodList.fCalory} ]
				</core:forEach>
			]);
	        var options = {
	        	'title' : 'Your BMI Graph',
	        	is3D : true,
	        	tooltip :  {showColorCode: true},
	        	'width' : 1000,
	        	'height' : 540,
	        	'min' : 0,
	        };
	        
	        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div1'));
	
	        chart.draw(data, options);
	      }
	</script>
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
						<div id="chart_div0"></div>
						<br/>
						<div id="chart_div1"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
</body>
</html>