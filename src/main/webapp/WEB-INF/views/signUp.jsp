<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up Page</title>

  <style>
    body {
      font-family: 'Goudy Old Style', 'Palatino Linotype', Palatino, 'Book Antiqua', serif;
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

    input[type="text"],
    input[type="password"],
    input[type="date"] {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
      box-sizing: border-box;
      border: 2px solid #3498db;
      border-radius: 4px;
      background-color: #ecf0f1;
      color: #34495e;
    }
    input[name="mobile"] {
  /* Add any additional styles specific to the mobile input field here */
}

    input[type="radio"] {
      margin-right: 5px;
    }

    input[type="submit"] {
      background-color: #e74c3c;
      color: white;
      padding: 12px 18px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
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
  <h2>Sign Up Here</h2>

  <form action="saveReg" method="post">
    <table>
      <tr><td><strong>${msg}</strong></td></tr> 
       <tr><td><strong>${error}</strong></td></tr>    
      <tr><td><strong>First Name</strong></td><td><input type="text" name="firstName"/></td></tr>
      <tr><td><strong>Second Name</strong></td><td><input type="text" name="lastName"/></td></tr>
      <tr><td><strong>Department</strong></td><td><input type="text" name="department"/></td></tr>
      <tr><td><strong>Position</strong></td><td><input type="text" name="position"/></td></tr>
      <tr><td><strong>E-mail</strong></td><td><input type="text" name="email"/></td></tr>
      <tr><td><strong>Date Of Birth</strong></td><td><input type="date" name="dateOfBirth"/></td></tr>
      <tr><td><strong>Address</strong></td><td><input type="text" name="address"/></td></tr>
      <tr><td><strong>Mobile</strong></td><td><input type="text" name="mobile"/></td></tr>
      <tr><td><strong>Gender</strong></td><td><input type="radio" value="Male" name="gender"/>Male<input type="radio" value="Female" name="gender"/>Female<input type="radio" value="Other" name="gender"/>Other</td></tr>
      <tr><td><input type="submit" value="Register"></td></tr>
       <tr><td> ${msg} </td></tr>
      <tr><td>Have an account? <strong><a href="view-login-page">Login</a></strong></td></tr>
    </table>
    </form>
      

   
  
  
</body>
</html>
