<%@page import="org.spring.jesa5.dto.StreamDto"%>
<%@page import="java.util.List"%>
<%@page import="org.spring.jesa5.dto.Course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course and Stream Selection</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #a8c0ff, #3f2b96);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    overflow: hidden;
  }

  .background-container {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1;
    overflow: hidden;
  }

  .background-container canvas {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
  }

  form {
    background-color: #FFFFFF;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 400px;
  }

  h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #333333;
  }

  select {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border-radius: 5px;
    border: 1px solid #CCCCCC;
    background-color: #FFFFFF;
    color: #333333;
  }

  button {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: #FFFFFF;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
    width: 100%;
    transition: background-color 0.3s ease;
  }

  button[type="reset"] {
    background-color: #F44336;
  }

  button:hover {
    background-color: #45A049;
  }

  button[type="reset"]:hover {
    background-color: #E53935;
  }

  .success-message {
    color: #4CAF50;
    font-weight: bold;
    text-align: center;
    margin-top: 10px;
    display: none;
  }
</style>
<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
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

  function showSuccessMessage() {
    var successMessage = document.getElementById('successMessage');
    successMessage.style.display = 'block';
    setTimeout(function() {
      successMessage.style.display = 'none';
    }, 3000);
  }

  particlesJS.load('background-container', 'particles.json', function() {
    console.log('particles.js loaded');
  });
</script>
</head>
<body>
<div class="background-container">
  <canvas></canvas>
</div>
<form action="/student/enroll" method="post">
  <h1>Select Course and Stream</h1>
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
  <select id="streamDropdown" name="stream"></select>
  <button onclick="showSuccessMessage()">Enroll</button>
  <button type="reset">Cancel</button>
  <p id="successMessage" class="success-message">Enrollment Successful!</p>
</form>
</body>
</html>
