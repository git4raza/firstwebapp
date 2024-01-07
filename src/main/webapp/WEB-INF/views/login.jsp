<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>

<style>
body {
	font-family: 'Goudy Old Style', 'Palatino Linotype', Palatino,
		'Book Antiqua', serif;
	background-color: #f8f8f8;
	margin: 0;
	padding: 0;
}

h2 {
	color: #333;
	text-align: center;
	font-size: 28px;
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

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 2px solid #3498db;
	border-radius: 4px;
	background-color: #ecf0f1;
	color: #34495e;
}

input[type="submit"] {
	width: 50%; /* Make the button take full width */
	background-color: #e74c3c;
	color: white;
	padding: 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 14px;
}

input[type="submit"]:hover {
	background-color: #c0392b;
}

a {
	color: #2ecc71;
	text-decoration: none;
	font-weight: bold;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<h2>Login Here</h2>

	<form action="loginController" method="post">
		<table>
			<tr>
				<td><label for="email"><strong>Email</strong></label></td>
				<td><input type="text" id="email" name="Email" /></td>
			</tr>
			<tr>
				<td><label for="password"><strong>Password</strong></label></td>
				<td><input type="password" id="password" name="password" /></td>
			</tr>
			<tr>
				<td></td>

				<td colspan="2"><input type="submit" value="Login"></td>
			</tr>
		</table>
		<table>
			<tr>

				<td colspan="2"><a href="forgotpassword">Forgotten your
						password?</a></td>
			</tr>
			<tr>

				<td colspan="2"><strong>Don't have an account?</strong> <strong><a
						href="SignupController">Sign Up</a></strong></td>
			</tr>
		</table>

	</form>
	${msg}

</body>
</html>
