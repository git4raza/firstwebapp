<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>Employee List</title>

  <style>
    body {
      font-family: 'Goudy Old Style', 'Palatino Linotype', Palatino, 'Book Antiqua', serif;
      background-color: #f8f8f8;
      margin: 0;
      padding: 0;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin: 20px 0;
      border: 2px solid #3498db; /* Table border color */
    }

    th, td {
      padding: 12px;
      border: 1px solid #ddd;
      text-align: left;
    }

    th {
      background-color: #27ae60; /* Table header background color */
      color: white;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    tr:hover {
      background-color: #e0e0e0;
    }

    a {
      text-decoration: none;
      color: #3498db;
      font-weight: bold;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <table border="6">
    <tr>
      <th>Employee ID</th>
      <th>First Name</th>
      <th>Second Name</th>
      <th>Department</th>
      <th>Position</th>
      <th>E-mail</th>
      <th>Mobile</th>
      <th>Date Of Birth</th>
      <th>Address</th>
      <th>Gender</th>
      <th>Update Basic Details</th>
      <th>Delete</th>
      
    </tr>

    <c:forEach var="reg" items="${registrations}">
      <tr>
        <td>${reg.employeeID}</td>
        <td>${reg.firstName}</td>
        <td>${reg.lastName}</td>
        <td>${reg.department}</td>
        <td>${reg.position}</td>
        <td>${reg.email}</td>
        <td>${reg.mobile}</td>
        <td>${reg.dateOfBirth}</td>
        <td>${reg.address}</td>
        <td>${reg.gender}</td>
        <td><a href="getEmployeeRegById?id=${reg.employeeID}">Update</a></td>
        <td><a href="deleteEmployeeReg?id=${reg.employeeID}">Delete</a></td>
      </tr>
    </c:forEach>
  </table>
  ${msg}
</body>
</html>
