<%@page import="org.spring.jesa5.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Home</title>
<style>
    /* Styling for buttons */
    .button {
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
        text-align: center;
        text-decoration: none;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        align-items: center;
        justify-content: center;
    }

    .button:hover {
        background-color: #45a049;
    }

    /* Styling for headings */
    h1 {
        font-size: 24px;
        font-weight: bold;
        margin-top: 20px;
    }

    /* Animation for success message */
    .success-animation {
        animation-name: success;
        animation-duration: 1s;
    }

    @keyframes success {
        0% {
            opacity: 0;
            transform: translateY(-10px);
        }
        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .fail-animation {
        animation-name: fail;
        animation-duration: 1s;
    }

    @keyframes fail {
        0% {
            opacity: 0;
            transform: translateY(-10px);
        }
        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }
    
    /* Background animation */
    body {
        background: linear-gradient(-45deg, #EE7752, #E73C7E, #23A6D5, #23D5AB);
        background-size: 400% 400%;
        animation: gradient-animation 10s ease-in-out infinite;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
        overflow: hidden;
    }
    
    @keyframes gradient-animation {
        0% {
            background-position: 0% 50%;
        }
        50% {
            background-position: 100% 50%;
        }
        100% {
            background-position: 0% 50%;
        }
    }
    
    /* Background image */
    .background-image {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: -1;
        background-image: url('../images/background.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        opacity: 0.5;
    }

    /* Centered content */
    .content {
        text-align: center;
    }
</style>
</head>
<body>
<div class="background-image"></div>
<div class="content">
<h1 style="color: green" class="success-animation">${success}</h1>
<h1 style="color: red" class="fail-animation">${fail}</h1>
<%
    Student student = (Student) session.getAttribute("student");
    if (student == null) {
        request.setAttribute("fail", "Invalid session. Login again.");
        request.getRequestDispatcher("StudentLogin.jsp").forward(request, response);
    } else {
%>
    <% if (!student.isStatus()) { %>
        <a href="/student/course"><button class="button">Enroll for course</button></a>
    <% } else {
        if (student.getDoj() == null) { %>
            <a href="/PrintChallan.jsp"><button class="button">Print Challan</button></a>
    <% } } %>
    <a href="/Idcard.jsp"><button class="button">View ID Card</button></a>
    <a href="/LibraryCard.jsp"><button class="button">View Library Card</button></a>
    <a href="/TimeTable.jsp"><button class="button">View Timetable</button></a>
    <a href="/logout"><button class="button">Logout</button></a>
<% } %>
</div>
</body>
</html>
