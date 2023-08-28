<%@page import="java.util.List"%>
<%@page import="org.spring.jesa5.dto.Course"%>
<%@page import="org.spring.jesa5.dto.StreamDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="color: green">${success}</h1>
	<h1 style="color: red">${fail}</h1>
	<h1>Stream Fee Update</h1>
	<%
	List<StreamDto> streamlist = (List<StreamDto>) session.getAttribute("streamlist");
	List<Course> courselist = (List<Course>) session.getAttribute("courselist");
	%>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Course Name</th>
			<th>Stream Name</th>
			<th>Fee</th>
			<th>Duration</th>
			<th>Edit</th>
		</tr>
		<%
		for (Course c : courselist) {
		%>
		<%
		for (StreamDto s : c.getStreams()) {
		%>
		<form action="/admin/updateFeestream/<%=s.getId()%>" method="post">
			<tr>
				<th><%=s.getId()%></th>
				<th><%=c.getName()%></th>
				<th><%=s.getName()%></th>
				<th><%=s.getFee()%></th>
				<th><input type="number" name="fee" required></th>
				<th><button type="submit">Edit Fee</button></th>
			</tr>
		</form>
		<%
		}
		%>
		<%
		}
		%>
	</table>
	<a href="/AdminHome.jsp"><button>Back</button></a>
</body>
</html>