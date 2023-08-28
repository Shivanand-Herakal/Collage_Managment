<%@page import="org.spring.jesa5.dto.Student"%>
<%@page import="java.util.Base64"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student ID</title>
<style>
body{
background-color: pink;
}

.container {
	margin: 120px auto;
	width: fit-content;
	height: fit-content;
	align-items: center;
	text-align: center;
	border: 2px solid black;
	padding: 5px;
	background-color: skyblue;
	border-radius: 12px;
}

img {
	height: 125px;
	width: 125px;
}

.inner-container {
	text-align: center;
	align-items: center;
	align-content: center;
	
}

pre {
	text-align: center;
}
</style>
</head>
<body>
	<form action="studentIdcard"></form>
	<%
	if (session.getAttribute("student") != null) {
		// Retrieve student details from session
		Student student = (Student) session.getAttribute("student");
	%>
	<div class="container">
		<h1 style="color:  yellow;">Student Identity Card</h1>
		<h2 style="color: darkgoldenrod"><header>Suresh Angadi           <br>
		                College Of Engineering</header></h2>
		<h2 style="color:darkgoldenrod "><header>Belagavi,546980</header></h2>
		<hr>

		<div class="image">
			 <img src="data:image/jpeg;base64,<%=Base64.getEncoder().encodeToString(student.getPicture())%>">
		</div>
		<div class="inner-container">
			<div>
				<p>
					<strong>Name:</strong>
					<%=student.getName()%></p>
			</div>
		
			<div>
				<p>
					<strong>DOB:</strong>
					<%=student.getDob()%></p>
			</div>
			<div>
				<p>
					<strong>Mobile Number:</strong>
					<%=student.getMobile()%></p>
			</div>
		</div>

		<%
		} else {
		// Session does not contain student details
		%>
		<h1>No student details found.</h1>
		<%
		}
		%>
		<footer>
			<pre>Near Army Base Camp,
Miltary Mahadeva Temple Road
Belagavi 560103
            </pre>

		</footer>
		<footer> </footer>

	</div>
	<footer> </footer>
</body>
</html>