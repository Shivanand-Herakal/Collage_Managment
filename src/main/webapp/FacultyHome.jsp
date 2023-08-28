<%@page import="org.spring.jesa5.dto.Faculty"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Home</title>
<style>
    body {
        /* Set background color */
        background-color: #f0f0f0;
        /* Add different animation */
        background-image: radial-gradient(circle at top left, #00f0b5, #ff0b7e, #ffb800, #00f0b5);
        background-size: 200% 200%;
        animation: gradientAnimation 10s ease infinite;
    }

    @keyframes gradientAnimation {
        0% {
            background-position: 0% 0%;
        }
        50% {
            background-position: 100% 0%;
        }
        100% {
            background-position: 0% 0%;
        }
    }

    h1 {
        /* Add CSS styles to headings */
        color: green;
    }

    a {
        /* Add CSS styles to links */
        text-decoration: none;
        color: #000000;
        padding: 10px 20px;
        border: 1px solid #000000;
        background-color: #ffffff;
        margin: 10px;
        display: inline-block;
        transition: background-color 0.8s ease;
    }

    a:hover {
        /* Add hover effect to links */
        background-color: #000000;
        color: #ffffff;
    }
</style>
</head>
<body>
<h1 style="color: green">${success}</h1>
<h1 style="color: red">${fail}</h1>
<%
Faculty faculty = (Faculty)session.getAttribute("faculty");
if (faculty == null) {
    request.setAttribute("fail", "Invalid session. Please login again.");
    request.getRequestDispatcher("FacultyLogin.jsp").forward(request, response);
}

if (faculty.getDoj() == null) {
%>
    <a href="/Faciltyidcard.jsp">View ID Card</a>
    <a href="/logout">Logout</a>
<%
}
%>
</body>
</html>
