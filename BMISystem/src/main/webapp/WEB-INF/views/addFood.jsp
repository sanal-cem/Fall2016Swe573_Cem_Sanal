<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Add Food</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" 
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
</head>
<body>
<h2 align="center">Add Food</h2>
<hr />
	<div class="container">
		<div id="AddFood">
			<div class="col-xs-4">
				<form:form commandName="addFood" method="POST" action="newFood">
				<p class="desc">Food Offset: </p>
				<form:input class="form-control numbersOnly" path="offset" />
				<br />
				<p class="desc">Food Group: </p>
				<form:input class="form-control" path="group" />
				<br />
				<p class="desc">Food Name: </p>
				<form:input class="form-control" path="name" />
				<br />
				<p class="desc">Food NDbNo: </p>
				<form:input class="form-control" path="nDbNo" />
				<br />
				<p class="desc">Food Ds: </p>
				<form:input class="form-control" path="ds" />
				<br />
				<p class="desc">Food Calory: </p>
				<form:input id="form-control numbersOnly" class="form-control numbersOnly" path="fCalory" />
				<br />
				<p class="desc">Food Ingredients: </p>
				<form:textarea class="form-control" cols="30" rows="3" path="fIngred" />
				<br />
				<input class="ui-button ui-widget ui-corner-all" type="submit" value="Add Food" />
				<br /><br />
				</form:form>
			</div>
		</div>
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

</script>
</html>