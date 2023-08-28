<%@page import="org.spring.jesa5.dto.Faculty"%>
<%@page import="java.util.Base64"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty ID</title>
<style>
body{
background-color: gray;
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
.button{
background-color: skyblue;
color: red;
font-size: 12px;
font-family: cursive;
font-style: italic;
font-weight: 12px;
position: relative;
left: 725px;
}
.button:hover {
	 background-color: #45a049;
	 color: yellow;
}
 
</style>
</head>
<body>
	<form action="facultyIdcard"></form>
	<%
	if (session.getAttribute("faculty") != null) {
		// Retrieve faculty details from session
		Faculty faculty = (Faculty) session.getAttribute("faculty");
	%>
	<div class="container">
		<h1>Faculty Identity Card</h1>
		<header>Apple Ball Cat College Of Engineering</header>
		<header>New Delhi,546980</header>
		<hr>

		<div class="image">
		<%if(faculty.getPicture()==null){ %>
		<img alt="photo">
		<%} else{%>
			 <img src="data:image/jpeg;base64,<%=Base64.getEncoder().encodeToString(faculty.getPicture())%>">
		<%} %>
		</div>
		<div class="inner-container">
			<div>
				<p>
					<strong>Name:</strong>
					<%=faculty.getName()%></p>
			</div>
			<!--  <div>
				<p>
					<strong>USN Number:</strong>
						
			</div>-->
			<div>
				<p>
					<strong>DOB:</strong>
					<%=faculty.getDob()%></p>
			</div>
			<div>
				<p>
					<strong>Mobile Number:</strong>
					<%=faculty.getMobile()%></p>
			</div>
		</div>

		<%
		} else {
		// Session does not contain faculty details
		%>
		<h1>No faculty details found.</h1>
		<%
		}
		%>
		<footer>
			<pre>xyx road, near this, behind that,
don't come here, bye bye 456970
            </pre>

		</footer>
		<footer> </footer>

	</div>
	  <a href="/FacultyHome.jsp"><button class="button">FacultyHOME</button></a>
</body>
</html>