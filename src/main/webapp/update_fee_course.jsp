<%@page import="org.spring.jesa5.dto.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <body>
	<h1 style="color: green">${success}</h1>
	<h1 style="color: red">${fail}</h1>
	
	<%List<Course> courses = (List<Course>) session.getAttribute("list");%>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Fee</th>
			<th>Duration</th>
			<th>Enter updated fee</th>
			<th>Edit</th>
		</tr>
		<%for (Course c : courses) {%>
		<form action="/admin/updateFee/<%=c.getId()%>" method="post">
			<tr>
				<th><%=c.getId()%></th>
				<th><%=c.getName()%></th>
				<th><%=c.getFee()%></th>
				<th><%=c.getDuration()%></th>
				<th><input type="number" name="fee" required></th>
				<th><button type="submit">Edit Fee</button></th>
			</tr>
		</form>
		<%}%>
	</table>
	<a href="/AdminHome.jsp"><button>Back</button></a>
</body>
</html>