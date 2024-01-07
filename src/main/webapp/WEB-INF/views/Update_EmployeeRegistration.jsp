<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Registration Updation Page</title>

<style>
body {
	font-family: 'Goudy Old Style', 'Palatino Linotype', Palatino,
		'Book Antiqua', serif;
	background-color: #f8f8f8;
	margin: 0;
	padding: 0;
	text-align: center;
}

h1 {
	color: #333;
	margin-bottom: 20px;
}

form {
	max-width: 600px;
	margin: 20px auto;
	background: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
	width: 100%;
}

td {
	padding: 10px;
}

input[type="text"], input[type="password"], input[type="date"] {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 2px solid #3498db;
	border-radius: 4px;
	background-color: #ecf0f1;
	color: #34495e;
}

input[type="radio"] {
	margin-right: 5px;
}

input[type="submit"] {
	background-color: #27ae60;
	color: white;
	padding: 12px 18px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

input[type="submit"]:hover {
	background-color: #218c53;
}

a {
	color: #3498db;
	text-decoration: none;
	font-weight: bold;
}

a:hover {
	text-decoration: underline;
}

.message {
	margin-top: 20px;
	color: #27ae60;
}
</style>

</head>
<body>
	<h1>Update Employee Registration Here....</h1>

	<form action="updateEmployeeReg" method="post">
		<table>
			<tr>
				<td><input type="hidden" name="employeeID"
					value="${reg.employeeID}" /></td>
			</tr>
			<tr>
				<td><strong>First Name</strong></td>
				<td><input type="text" name="firstName"
					value="${reg.firstName}" /></td>
			</tr>
			<tr>
				<td><strong>Second Name</strong></td>
				<td><input type="text" name="lastName" value="${reg.lastName}" /></td>
			</tr>
			<tr>
				<td><strong>Department</strong></td>
				<td><input type="text" name="department"
					value="${reg.department}" /></td>
			</tr>
			<tr>
				<td><strong>Position</strong></td>
				<td><input type="text" name="position" value="${reg.position}" /></td>
			</tr>
			<tr>
				<td><strong>E-mail</strong></td>
				<td><input type="text" name="email" value="${reg.email}" /></td>
			</tr>
			<tr>
				<td><strong>Mobile</strong></td>
				<td><input type="text" name="mobile" value="${reg.mobile}" /></td>
			</tr>
			<tr>
				<td><strong>Date Of Birth</strong></td>
				<td><input type="date" name="dateOfBirth"
					value="${reg.dateOfBirth}" /></td>
			</tr>
			<tr>
				<td><strong>Address</strong></td>
				<td><input type="text" name="address" value="${reg.address}" /></td>
			</tr>
			<tr>
				<td><strong>Gender</strong></td>
				<td><input type="radio" value="Male" name="gender" value="${reg.gender}"/>Male<input
					type="radio" value="Female" name="gender" value="${reg.gender}" />Female<input type="radio" value="Other" name="gender" value="${reg.gender}"/>Other</td>
			</tr>
			<tr>
				<td><input type="submit" value="Update"></td>
			</tr>
		</table>
	</form>

	<table>
		<tr>
			<td class="message">${msg}</td>
		</tr>
		<tr>
			<td>New User? <strong><a href="SignupController">Sign
						Up</a></strong></td>
		</tr>
	</table>
</body>
</html>
