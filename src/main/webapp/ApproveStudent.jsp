<%@page import="org.spring.jesa5.dto.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student List</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
  }
  
  .container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-image: url('../images/approve.webp');
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
  }
  
  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    background-color: rgba(255, 255, 255, 0.8);
  }
  
  th, td {
    padding: 10px;
    text-align: center;
  }
  
  th {
    background-color: #f2f2f2;
  }
  
  tr:nth-child(even) {
    background-color: #f9f9f9;
  }
  
  tr:hover {
    background-color: #e3e3e3;
  }
  
  a {
    text-decoration: none;
  }
  
  .approve-cell {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  
  .approve-icon {
    width: 24px;
    height: 24px;
    background-image: url('../images/approve-icon.png');
    background-repeat: no-repeat;
    background-size: contain;
  }
  
  button {
    padding: 5px 10px;
    background-color: #4CAF50;
    color: #FFFFFF;
    border: none;
    cursor: pointer;
  }
  
  button:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
<div class="container">
<%
  List<Student> list = (List<Student>) request.getAttribute("students");
%>
<table>
  <tr>
    <th>Student Id</th>
    <th>Student Name</th>
    <th>Student Mobile</th>
    <th>Student Course</th>
    <th>Student Stream</th>
    <th>Student Quota</th>
    <th>Approve</th>
  </tr>
  <%
  for (Student student : list) {
  %>
  <tr>
    <td><%=student.getId()%></td>
    <td><%=student.getName()%></td>
    <td><%=student.getMobile()%></td>
    <td><%=student.getCourse().getName()%></td>
    <td><%=student.getStream().getName()%></td>
    <td><%=student.getQuota()%></td>
    <td class="approve-cell"><a href="/student/approve/<%=student.getId()%>"><div class="approve-icon"><butto>Approve</button></div></a></td>
  </tr>
  <%
  }
  %>
</table>
</div>
</body>
</html>
