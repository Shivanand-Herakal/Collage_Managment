<%@page import="org.spring.jesa5.dto.StreamDto"%>
<%@page import="org.spring.jesa5.dto.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
function updateStreams() {
    var courseDropdown = document.getElementById('courseDropdown');
    var streamDropdown = document.getElementById('streamDropdown');
    var selectedCourse = courseDropdown.value;
    streamDropdown.innerHTML = '';
    var streams = [];
    <%
    List<Course> list = (List<Course>) request.getAttribute("list");
    for (Course course : list) {
        %>
        if (selectedCourse === '<%= course.getName() %>') {
            <% for (StreamDto stream : course.getStreams()) { %>
                streams.push('<%= stream.getName() %>');
            <% } %>
        }
        <%
    }
    %>
    streams.forEach(function(stream) {
        var option = document.createElement('option');
        option.value = stream;
        option.textContent = stream;
        streamDropdown.appendChild(option);
    });
}

</script>
</head>
<body>
<form action="/update/course" method="post">
	<h1 style="color:green">${success}</h1>
	<h1 style="color:red">${fail}</h1>
	<h1>Update The Course Details</h1>
		<select id="courseDropdown" onchange="updateStreams()" name="course">
    <option>Select One Course</option>
        <%
        for (Course course : list) {
        %>
        <option><%= course.getName() %></option>
        <%
        }
        %>
    </select>
    <select id="streamDropdown" name="stream">
    </select>
	Course Name: <input type="text" name="name">
			<br>
	Course Fee: <input type="text" name="fee">
			<br>
	Course Duration: <input type="number" name="duration">
			<br>
			<button type="reset">Cancel</button>
			<button type="submit">Update</button>
		
</form>		
</body>
</html>