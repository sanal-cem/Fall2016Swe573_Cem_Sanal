<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Login</title>
</head>
<body>
<h2 align="center">User Login</h2>
<hr />
<table align="center" cellpadding="5" cellspacing="5">
	<form:form commandName="login" method="POST" action="loginSuccess">
		<tr>
			<td>User Name</td>
			<td><form:input path="uName" /></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><form:input type="password" path="pass" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Login" /></td>
		</tr>
		<tr>
			<td><a href="/pages/registration.jsp"></a></td>
		</tr>
	</form:form>
</table>
</body>
</html>