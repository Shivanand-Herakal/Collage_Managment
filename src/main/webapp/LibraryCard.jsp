<%@page import="org.spring.jesa5.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Base64"%>
<!DOCTYPE html>
<html>
<head>
  <title>Library Card</title>
  <style>
    body {
      background-color: #f5f5f5;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .card {
      width: 300px;
      background-color: #ffffff;
      border-radius: 8px;
      padding: 20px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
      text-align: center;
    }
    
    .header {
      margin-bottom: 20px;
    }
    
    .header h2 {
      margin: 0;
      font-size: 24px;
      color: #333333;
    }
    
    .label {
      font-weight: bold;
    }
    
    .details p {
      margin: 8px 0;
      font-size: 16px;
      color: #555555;
    }
    
    .barcode {
      margin-top: 20px;
    }

    .image {
      display: flex;
      justify-content: center;
    }
    
    .image img {
      height: 125px;
      width: 125px;
      border-radius: 18px;
    }
  </style>
</head>
<body style="background-color: gray;">
<%
  if (session.getAttribute("student") != null) {
    // Retrieve student details from session
    Student student = (Student) session.getAttribute("student");
%>
  <div class="card" style="background-color: skyblue;">
    <div class="header" style="background-color: white;border-left-color:red;border-radius: 5px;">
      <h2 style="color: red;">Library Card</h2>
    </div>
    <div class="image">
      <img src="data:image/jpeg;base64,<%=Base64.getEncoder().encodeToString(student.getPicture())%>" alt="Profile Picture">
    </div>
    <div class="details">
      <p><strong class="label">Name:</strong> <%=student.getName()%></p>
      <p><strong class="label">Email:</strong> <%=student.getEmail()%></p>
      <p><strong class="label">DOB:</strong> <%=student.getDob()%></p>
      <p><strong class="label">Issued:</strong> <%=student.getDoj()%></p>

    </div>
    
<%
  } else {
    // Session does not contain student details
%>
  <h1>No student details found.</h1>
<%
  }
%>
  </div>
</body>
</html>