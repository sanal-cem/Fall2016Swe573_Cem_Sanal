<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>New Food</title>
</head>
<body>
<h2 align="center">New Food</h2>
<hr />
<table align="center" cellpadding="5" cellspacing="5">
	<form:form commandName="food" method="POST" action="add-update">
		<tr>
			<td>User Name</td>
			<td><form:label readonly="true" value="${ login.uName}" path="uName" ></form:label></td>
		</tr>
		<tr>
			<td>Food</td>
			<td><form:input path="foodId" /></td>
		</tr>
		<tr>
			<td>Food Name</td>
			<td><form:input path="fName" /></td>
		</tr>
<%-- 		<tr>
			<td>Food</td>
			<td><form:select path="food">
				<form:option value="" label="Select Food" />
				<form:options items="${foods}" itemLabel="foodId" itemValue="foodId" />
			</form:select></td>
		</tr> --%>
		<tr>
			<td>Food Type</td>
			<td><form:textarea cols="30" rows="2" path="fType" /></td>
		</tr>
		<tr>
			<td>Food Calory</td>
			<td><form:input path="fCalory" /></td>
		</tr>
		<tr>
			<td>Food Ingredients</td>
			<td><form:textarea cols="30" rows="3" path="fIngred" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Register" /></td>
		</tr>
	</form:form>
</table>
</body>
</html>