<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Registration</title>
</head>
<body>
<h2 align="center">User Registration</h2>
<hr />
<table align="center" cellpadding="5" cellspacing="5">
	<form:form commandName="registration" method="POST" action="regSuccess">
		<tr>
			<td>User Name</td>
			<td><form:input path="uName" /></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><form:input type="password" path="pass" /></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><form:input path="name" /></td>
		</tr>
		<tr>
			<td>Surname</td>
			<td><form:input path="surName" /></td>
		</tr>
		<tr>
			<td>Age</td>
			<td><form:input path="age" /></td>
		</tr>
		<tr>
			<td>Comments</td>
			<td><form:textarea cols="30" rows="6" path="comment" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Register" /></td>
		</tr>
	</form:form>
</table>
</body>
</html>