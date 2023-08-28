<%@page import="org.spring.jesa5.dto.Course"%>
<%@page import="org.spring.jesa5.dto.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD Stream</title>
<style >
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  overflow: hidden;
}

h1 {
  color: #333;
}

form {
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  animation: slideIn 1s ease-in-out;
}

input[type="text"],
input[type="number"] {
  padding: 10px;
  margin-bottom: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
}

button {
  padding: 10px 20px;
  background-color: #4CAF50;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

button[type="reset"] {
  background-color: #f44336;
}

a {
  text-decoration: none;
  color: #fff;
}

button:hover {
  opacity: 0.8;
}

button[type="reset"]:hover {
  background-color: #d32f2f;
}

button:active {
  transform: scale(0.98);
}

@keyframes slideIn {
  from {
    transform: translateY(-50px);
    opacity: 0;
  }
  to {
    transform: translateY(0);
    opacity: 1;
  }
}

/* Additional Styling */

h1#success {
  color: green;
  animation: slideIn 1s ease-in-out;
}

h1#fail {
  color: red;
  animation: slideIn 1s ease-in-out;
}

body::before {
  content: "";
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
  z-index: -1;
  animation: animatedBackground 30s linear infinite;
  background: radial-gradient(circle at center, #ffcc00 0%, #ff8000 50%, #ffcc00 100%);
}

@keyframes animatedBackground {
  0% {
    background-position: 0 0;
  }
  100% {
    background-position: 100% 100%;
  }
}
</style>
</head>
<body>
<h1 style="color:green">${success}</h1>
<h1 style="color:red">${fail}</h1>
	<h1>Enter Stream Details</h1>
	<br>
	<form action="/admin/stream" method="post">
		Stream Name: <input type="text" name="name"> <br> Stream
		Fee: <input type="text" name="fee"> <br>
		Seats: <input type="number" name="seat"> <br>
		 Select Course: <select
			name="courseName">
			<%
			List<Course> list = (List<Course>) request.getAttribute("list");
			for (Course course : list) {
			%>
			<option><%=course.getName()%></option>
			<%
			}
			%>
		</select>
		<button type="reset">Cancel</button>
		<button>Add</button>
	</form>
	<br>
	<a href="/AdminHome.jsp"><button>Back</button></a>
</body>
</html>