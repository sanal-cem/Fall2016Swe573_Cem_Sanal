<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title>BMI Calculator Login Page</title>

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	background-color: #e7e7e7;
	font-family: Helvetica;
	font-size: 14px;
	color: #666;
	margin: 0px;
	padding: 0px;
}

.wrapper {
	width: 90%;
	height: 80%;
	margin: 0 auto;
	background: white;
	margin: 0 auto;
}

.container {
	min-height: 400px;
	border-top: 1px solid gray;
	padding: 50px;
}
</style>
</head>
<body>
<div class="toggler">
	<div id="dialog" class="ui-widget-header ui-corner-all" title="BMI Calculator">
	  <p>Welcome to the coolest BMI Calculator ever! To login, you should use your e-mail address.</p>
	</div>
</div>
<h2>User Login</h2>
<hr />
	<div class="wrapper">
		<div class="container">
			<div id="tabs">
				<ul>
					<li><a href="#login">Login</a></li>
					<li><a href="#register">Register</a></li>
				</ul>
				<div id="login">
					<% 
  	if((String)session.getAttribute("error") != null){ %>
					<h4>Invalid Email or Password. Please try again.</h4>
					<%} %>
					<form:form commandName="login" method="POST" action="loginSuccess">
						<p class="desc">User Name: </p>
						<form:input class="ui-button" path="uName" />
							<br />
						<p class="desc">Password: </p>
						<form:input class="ui-button" type="password" path="pass"/>
							<br /><br />
						<input class="ui-button ui-widget ui-corner-all" type="submit" value="Login" />
							<br /><br />
					</form:form>
				</div>
				<div id="register">
					<form:form commandName="login" method="POST" action="regSuccess">
					<div class="col-xs-3">
						<p class="desc">User Name: </p>
						<form:input class="form-control" path="uName" />
							<br />
						<p class="desc">Password: </p>
						<form:input class="form-control" type="password" path="pass"/>
							<br /><br />
						<p class="desc">Name: </p>
						<form:input class="form-control" path="name" />
							<br /><br />
						<p class="desc">Surname: </p>
							<form:input class="form-control" path="surName" />
							<br /><br />
						<p class="desc">Age</p>
						<form:input id="numbersOnly" class="form-control" path="age" />
							<br />
						<p class="desc">Comments</p>
							<br />
						<form:textarea cols="30" rows="6" path="comment" />
							<br /><br />
						<input class="ui-button ui-widget ui-corner-all" type="submit" value="Register" />
						</div>
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
  $( "#numbersOnly" ).keyup(function () {
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
	        options = { to: { width: 200, height: 60 } };
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