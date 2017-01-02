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
    </head>
    <body>
  	<div class="container">
		<div id="AddFood">
			<div class="col-xs-3">
	        <form:form method="GET" commandName="foodList" action="foodList" modelAttribute="keyword">
	        	<br /><br />
	            <p class="desc">Food Name: </p>
				<input class="form-control" id="search_box" type="text" name="keyword"><br>
	            <input class="ui-button ui-widget ui-corner-all" id="search_button" type="submit" value="Search"></input>
	        </form:form>
	        </div>
		</div>
	</div>
</body>
</html>
