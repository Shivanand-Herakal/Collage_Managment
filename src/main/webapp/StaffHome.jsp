<!DOCTYPE html>
<%@page import="org.spring.jesa5.dto.Staff"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Home</title>
<style>
    .content {
        text-align: center;
    }
    
    /* Header styles */
    .header {
        background-color: pink;
        padding: 20px;
        text-align: center;
    }

    .header h1 {
    
        font-size: 24px;
        margin: 0;
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

    /* Animation for fail message */
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
        background-image: url("../images/banner2.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        
    }

    /* Centered content */
    .content {
        text-align: center;
    }

    /* Button styles */
    .button-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 20px;
    }

    .button-container a {
        margin-bottom: 10px;
    }
</style>
</head>
<body style="image">
<div class="header">
    <h1>Welcome to Staff Home</h1>
</div>
<div class="background-image"></div>
<h1 style="color: green" class="success-animation">${success}</h1>
<h1 style="color: red" class="fail-animation">${fail}</h1>
<%
    Staff staff = (Staff) session.getAttribute("staff");
    if (staff == null) {
        request.setAttribute("fail", "Invalid session. Login again.");
        request.getRequestDispatcher("StaffLogin.jsp").forward(request, response);
    }
%>
<div class="content">
    <h2 style="color: green;" class="success-animation">${success}</h2>
</div>
<div class="button-container">
    <a href="/StaffIdcard.jsp"><button class="button">View ID Card</button></a>
    <a href="/logout"><button class="button">Logout</button></a>
</div>
</body>
</html>
