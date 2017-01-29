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
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
						<h2 align="center">Add Activity</h2>
						<hr />
						<select name="selDropDown" class="form-control" onchange="setItems(this);">
							<core:forEach var="actItem" items="${actList.getActList()}" varStatus="loop">
								<option value="${loop.count}" class="btn btn-primary dropdown-toggle">${actItem.actDesc}</option>
							</core:forEach>
						</select>
						<table class="paginated" >
							<tbody>
							<core:forEach var="actItem" items="${actList.getActList()}">
							    <tr><td>
							    	<p class="desc"><b>Activity Description:</b></p>
							    </td><td>
							    	<p class="desc"><b><core:out value="${actItem.actDesc}"/></b></p>
							    </td></tr>
							    <tr><td>
							    	<p class="desc"><b>Activity METS:</b></p>
							    </td><td>
							    	<p class="desc"><b><core:out value="${actItem.actMETS}"/></b></p>
								</td></tr>
								<tr><td>
							    	<p class="desc"><b>Activity Group:</b></p>
							    </td><td>
							    	<p class="desc"><b><core:out value="${actGrpList.getActGroupListID(actItem.actGroupID).actName}"/></b></p>
							    </td></tr>
							    <form:form method="GET" commandName="addActivity" action="addActivity" modelAttribute="duration, date, actID">
							    	<tr><td>
										<p class="desc"><b>Activity Duration (Minutes):</b></p><p class="desc"><input class="ui-button numbersOnly" type="text" name="duration" ></p>
						            	<br/>
						            	<p class="desc"><b>Activity Date:</b></p><p class="desc"><input class="ui-button datepicker" type="text" name="date" ></p>
						            	<br/>
						            	<input class="hidden" type="text" value="<core:out value="${actItem.actId}"/>" name="actID" ></input>
						            </td></tr>
						            <tr><td>
						            	<input class="ui-button ui-widget ui-corner-all" type="submit" value="Add Activity"></input>
						        	</td></tr>
						        </form:form>
						        
							 </core:forEach>
							 </tbody>
			   	 		 </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/ddDataTable.js">
</script>

<script type="text/javascript">
	$( function() {
		$( ".datepicker" ).datepicker();
	
		$( ".numbersOnly" ).keyup(function () {
		   if (this.value != this.value.replace(/[^0-9\.]/g, '')) {
		      this.value = this.value.replace(/[^0-9\.]/g, '');
		   }
		});
	});
</script>
</html>