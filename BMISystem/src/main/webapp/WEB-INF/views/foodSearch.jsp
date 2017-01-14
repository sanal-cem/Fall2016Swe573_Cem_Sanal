<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
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
	<script type="text/javascript">
	function validateForm(form) {
	    if (isNotEmpty(form.search_box)) {
	        if(isNotEmpty(form.search_button)) {
	            return true;
	        }
	    }
	    return false;
	}

	function isNotEmpty(field) {

	    var fieldData = field.value;

	    if (fieldData.length < 3 || fieldData == "") {

	        alert("Please enter more than 2 letters.");
	        return false;
	    } else {

	        return true; //Submits form
	    }
	}
	</script>
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
							<h2 align="center">Search Foods</h2>
							<hr />
					        <form:form method="GET" commandName="foodList" action="foodList" modelAttribute="keyword" onsubmit="return validateForm(this)">
					        	<br /><br />
					            <p class="desc">Food Name: </p>
								<input class="form-control" id="search_box" type="text" name="keyword"><br>
					            <input class="ui-button ui-widget ui-corner-all" id="search_button" type="submit" value="Search"></input>
					        </form:form>
				        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    
</body>
</html>
