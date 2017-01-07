<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<html>
<head>
	<title>Registration</title>
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/homeStyle.css">
</head>

<body class="bdy" >
<h2 align="center">User Registration</h2>
<hr />
<table class="centeredTbl">
	<form:form commandName="registration" method="POST" action="search">
		<tr>
			<td>Username</td>
			<td><form:input path="uName" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Search" /></td>
		</tr>
	</form:form>
</table>
<core:if test="${login.uName != null}">
	<table class="centeredTbl">
		<thead>
			<tr>
				<td>User Name</td>
				<td>Name</td>
				<td>Surname</td>
				<td>Age</td>
				<td>Comment</td>
				<td>Edit</td>
				<td>Delete</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${login.uName}</td>
				<td>${login.name}</td>
				<td>${login.surName}</td>
				<td>${login.age}</td>
				<td>${login.comment}</td>
				<td><a href="load-form?roll=${login.uName}">Edit</a></td>
				<td><a href="delete?roll=${login.uName}">Edit</a></td>
			</tr>
		</tbody>
	</table>
</core:if>
</body>
</html>