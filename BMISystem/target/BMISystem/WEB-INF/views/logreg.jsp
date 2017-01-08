<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<title>BMI Calculator Login Page</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<link rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/homeStyle.css">
</head>

<body class="bdy" >
<div class="col-md-5 col-sm-5 textContainer">
	<h2>BMI Calculator</h2>
</div>
<br /><br /><br />
<div class="toggler">
	<div id="dialog" class="ui-widget-header ui-corner-all" title="BMI Calculator">
	  <p>Welcome to the latest BMI Calculator! To login, you should use your e-mail address.</p>
	</div>
</div>
	<div class="wrapper">
		<div class="container">
			<div id="tabs">
				<ul>
					<li><a href="#login">Login</a></li>
					<li><a href="#register">Register</a></li>
				</ul>
				<div id="login">
					<form:form commandName="logreg" method="POST" action="login">
						<p class="desc">User Name: </p>
						<form:input class="ui-button" path="uName" />
							<br /><br />
						<p class="desc">Password: </p>
						<form:input class="ui-button" type="password" path="pass"/>
							<br /><br />
						<input class="ui-button ui-widget ui-corner-all" type="submit" value="Login" />
							<br /><br />
					</form:form>
				</div>
				<div id="register">
					<form:form commandName="logreg" method="POST" action="reg">
						<p class="desc">User Name: </p>
						<form:input class="form-control" path="uName" />
							<br />
						<p class="desc">Password: </p>
						<form:input class="form-control" type="password" path="pass"/>
							<br />
						<p class="desc">Name: </p>
						<form:input class="form-control" path="name" />
							<br />
						<p class="desc">Surname: </p>
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
						<p class="desc">Comments</p>
							<br />
						<form:textarea class="form-control" cols="30" rows="6" path="comment" />
							<br /><br />
						<input class="ui-button ui-widget ui-corner-all" type="submit" value="Register" />
						<br /><br />
					</form:form>
				</div>
			</div>
		</div>
	</div>
 </body>
<script type="text/javascript">
$(function() {
  $( "#tabs" ).tabs();
  $( "#dialog" ).dialog();
  $( ".numbersOnly" ).keyup(function () {
	    if (this.value != this.value.replace(/[^0-9\.]/g, '')) {
	       this.value = this.value.replace(/[^0-9\.]/g, '');
	    }
	});
  runEffect();
	    // run the currently selected effect
	    function runEffect() {
	      // get effect type from
	      var selectedEffect = $( "#effectTypes" ).val();
	 
	      // Most effect types need no options passed by default
	      var options = {};
	      // some effects have required parameters
	      if ( selectedEffect === "scale" ) {
	        options = { percent: 50 };
	      } else if ( selectedEffect === "transfer" ) {
	        options = { to: "#button", className: "ui-effects-transfer" };
	      } else if ( selectedEffect === "size" ) {
	        options = { to: { width: 200, height: 50 } };
	      }
	 
	      // Run the effect
	      $( "#dialog" ).effect( "bounce", options, 500, callback );
	    };
	 
	    // Callback function to bring a hidden box back
	    function callback() {
	      setTimeout(function() {
	        $( "#dialog" ).removeAttr( "style" ).hide().fadeIn();
	      }, 1000 );
	    };
});

</script>
</html>