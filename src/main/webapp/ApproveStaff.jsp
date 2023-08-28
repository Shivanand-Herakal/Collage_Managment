<%@page import="org.spring.jesa5.dto.Staff"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff List</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-image: url('../images/staff.webp');
    background-repeat: no-repeat;
    background-size: cover;
    
  }

  
  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    background-color: rgba(255, 0, 0, 0.8);
  }
  
  th, td {
    padding: 10px;
    text-align: center;
  }
  
  th {
    background-color: skyblue;
  }
  
  tr:nth-child(even) {
    background-color: #e3e3e3;
  }
  
  tr:hover {
    background-color: pink;
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
    background-color: #45a049;
  }
  .button{
    position: relative;
    top:650px;
    left: 50px;
  }
</style>
</head>
<body>
<%
  List<Staff> list = (List<Staff>) request.getAttribute("list");
%>
<table>
  <tr>
    <th>Staff Id</th>
    <th>Staff Name</th>
    <th>Staff Mobile</th>
    <th>Age</th>
    <th>Status</th>
    <th>Change Status</th>
  </tr>
  <%
  for (Staff staff : list) {
  %>
  <tr>
    <td><%=staff.getId()%></td>
    <td><%=staff.getName()%></td>
    <td><%=staff.getMobile()%></td>
    <td><%=staff.getAge()%></td>
    <td><%=staff.isStatus()%></td>
    <td><a href="/staff/change/<%=staff.getId()%>"><button>Change</button></a></td>
  </tr>
  <%
  }
  %>
  <a href="/AdminHome.jsp"><button class="button">HOME</button></a>
</table>
</body>
</html>
