<%@page import="org.spring.jesa5.dto.Staff"%>
<%@page import="java.util.Base64"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff ID</title>
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
</style>
</head>
<body>
	<form action="staffIdcard"></form>
	<%
	if (session.getAttribute("staff") != null) {
		// Retrieve staff details from session
		Staff staff = (Staff) session.getAttribute("staff");
	%>
	<div class="container">
		<h1>Staff Identity Card</h1>
		<header>Apple Ball Cat College Of Engineering</header>
		<header>New Delhi,546980</header>
		<hr>

		<div class="image">
		<%if(staff.getPicture()==null){ %>
		<img alt="photo">
		<%} else{%>
			 <img src="data:image/jpeg;base64,<%=Base64.getEncoder().encodeToString(staff.getPicture())%>">
		<%} %>
		</div>
		<div class="inner-container">
			<div>
				<p>
					<strong>Name:</strong>
					<%=staff.getName()%></p>
			</div>
			<!--  <div>
				<p>
					<strong>USN Number:</strong>
						
			</div>-->
			<div>
				<p>
					<strong>DOB:</strong>
					<%=staff.getDob()%></p>
			</div>
			<div>
				<p>
					<strong>Mobile Number:</strong>
					<%=staff.getMobile()%></p>
			</div>
		</div>

		<%
		} else {
		// Session does not contain staff details
		%>
		<h1>No staff details found.</h1>
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
	<footer> </footer>
</body>
</html>