<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Set User Name And Password</title>

<style>
body {
	font-family: 'Goudy Old Style', 'Palatino Linotype', Palatino,
		'Book Antiqua', serif;
	background-color: #f8f8f8;
	margin: 0;
	padding: 0;
}

h1 {
	color: #333;
	text-align: center;
	font-size: 32px;
	margin-bottom: 30px;
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
	background-color: #2ecc71;
	color: white;
	padding: 12px 18px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

input[type="submit"]:hover {
	background-color: #27ae60;
}
</style>
</head>
<body>
	<h1>Enter your email address or username, and we'll send you a
		password to your email.</h1>
	<form action="sendpassword" method="post">
		<table>
			<tr>
				<td><strong>User Name or Email</strong></td>
				<td><input type="text" name="email" /></td>
			</tr>

		</table>
		<input type="submit" value="Send Password" />
	</form>
</body>
</html>
