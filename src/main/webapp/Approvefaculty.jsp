<%@page import="org.spring.jesa5.dto.Faculty"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty List</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-image: url('../images/faculty.jpg');
    background-repeat: no-repeat;
    background-size: cover;
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
    background-color: red;
  }
  
  tr:nth-child(even) {
    background-color: #f9f9f9;
  }
  
  tr:hover {
    background-color: darkgoldenrod;
  }
  
  a {
    text-decoration: none;
  }
  
  button {
    padding: 5px 10px;
    background-color: #4CAF50;
    color: #FFFFFF;
    border: none;
    cursor: pointer;
  }
  
  button:hover {
    background-color: pink;
  }
</style>
</head>
<body>
<%
  List<Faculty> list = (List<Faculty>) request.getAttribute("list");
%>
<table>
  <tr>
    <th>Faculty Id</th>
    <th>Faculty Name</th>
    <th>Faculty Mobile</th>
    <th>Subject</th>
    <th>Age</th>
    <th>Education</th>
    <th>Experience</th>
    <th>Status</th>
    <th>Change Status</th>
  </tr>
  <%
  for (Faculty faculty : list) {
  %>
  <tr>
    <td><%=faculty.getId()%></td>
    <td><%=faculty.getName()%></td>
    <td><%=faculty.getMobile()%></td>
    <td><%=faculty.getSubject()%></td>
    <td><%=faculty.getAge()%></td>
    <td><%=faculty.getEducation()%></td>
    <td><%=faculty.getExperience()%></td>
    <td><%=faculty.isStatus()%></td>
    <td><a href="/faculty/change/<%=faculty.getId()%>"><button>Change</button></a></td>
  </tr>
  <%
  }
  %>
    <a href="/AdminHome.jsp"><button class="button">HOME</button></a>
</table>
</body>
</html>
