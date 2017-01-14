<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<html>
<head>
	<title>User Settings</title>
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
							<form:form commandName="user" method="POST" action="update">
								<p class="desc">User Name: </p>
								<p><core:out value="${user.uName}"/></p>
								<form:input class="form-control" path="uName" />
									<br />
								<p class="desc">Password: </p>
								<p><core:out value="${user.pass}"/></p>
								<form:input class="form-control" type="password" path="pass" />
									<br />
								<p class="desc">Name: </p>
								<p><core:out value="${user.name}"/></p>
								<form:input class="form-control" path="name"/>
									<br />
								<p class="desc">Surname: </p>
								<p><core:out value="${user.surName}"/></p>
								<form:input class="form-control" path="surName" />
									<br />
								<p class="desc">Age</p>
								<form:input class="form-control numbersOnly" path="age" />
									<br />
								<p class="desc">Height</p>
								<form:input class="form-control numbersOnly" path="height" />
									<br />
								<p class="desc">Weight</p>
								<form:input class="form-control numbersOnly" path="weight" />
									<br />
								<p class="desc">Gender</p>
									<form:select class="form-control" path="gender" >
										<form:option value="M" >Male</form:option>
										<form:option value="F" >Female</form:option>
									</form:select>
									<br />
								<p class="desc">Comments</p>
									<br />
								<form:textarea class="form-control" cols="30" rows="6" path="comment" />
									<br /><br />
								<input class="ui-button ui-widget ui-corner-all" type="submit" value="update" />
								<br /><br />
							</form:form>
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
}
</script>
</html>