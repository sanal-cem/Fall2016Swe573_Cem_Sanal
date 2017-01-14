<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<html>
<head>
	<title>Add Activity</title>
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
						<h2 align="center">Add Activity</h2>
						<hr />
							<div class="container">
								<div id="AddAct">
									<div class="col-xs-4">
										<form:form commandName="addActivity" method="POST" action="newActivity">
										<p class="desc">Activity ID: </p>
										<form:input class="form-control" path="actId" />
										<br />
										<p class="desc">Activity Name: </p>
										<form:input class="form-control" path="actName" />
										<br />
										<p class="desc">Activity Type: </p>
										<form:input class="form-control" path="actType" />
										<br />
										<p class="desc">Activity Calory: </p>
										<form:input class="form-control numbersOnly" path="actClry" />
										<br />
										<!-- DateTime yapilacak. -->
										<p class="desc">Activity Date: </p>
										<form:input class="form-control cantWrite" type="text" id="datepicker" path="actTime" />
										<br />
										<input class="ui-button ui-widget ui-corner-all" type="submit" value="Add Activity" />
										<br /><br />
										</form:form>
									</div>
								</div>
							</div>
						</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
</body>
<script type="text/javascript">
$(function() {
  $( ".numbersOnly" ).keyup(function () {
	    if (this.value != this.value.replace(/[^0-9\.]/g, '')) {
	       this.value = this.value.replace(/[^0-9\.]/g, '');
	    }
	});
});
$(function() {
	  $( ".cantWrite" ).keyup(function () {
		  if(this.value != '')
		   this.value = this.value.replace(/[^a-z\.]/g, '');
		});
	});
$( function() {
    $( "#datepicker" ).datepicker();
  } );
</script>
</html>