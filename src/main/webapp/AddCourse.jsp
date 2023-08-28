<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
<style >
body {
  font-family: Arial, sans-serif;
  background-color: white;
  margin: 0;
  padding: 0;
}

h1 {
  color:red;
}

form {
   align-items:center;
  background-color: rgba(25,235,25,0.4);
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(25, 25, 235, 0.1);
}

input[type="text"],
input[type="number"] {
  padding: 10px;
  margin-bottom: 10px;
  border-radius: 5px;
  border: 1px solid red;
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
  color: fuchsia;
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

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
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

/* Apply animations to specific elements */

h1 {
  animation: fadeIn 1s ease-in-out;
}

form {
  animation: slideIn 1s ease-in-out;
}

/* Additional Styling */

h1#success {
  color: green;
  animation: fadeIn 1s ease-in-out;
}

h1#fail {
  color: red;
  animation: fadeIn 1s ease-in-out;
}

body {
  background: linear-gradient(to bottom right, #ff8000, #ffcc00);
}
</style>
</head>
<body>
<center>
	<h1 style="color:green">${success}</h1>
	<h1 style="color:red">${fail}</h1>
		<h1>Enter Course Details</h1>
		<br>
		<form action="/admin/course" method="post">
	Course Name: <input type="text" name="name">
			<br>
	Course Fee: <input type="text" name="fee">
			<br>
	Course Duration: <input type="number" name="duration">
			<br>
			<button type="reset">Cancel</button>
			<a href="/AdminHome.jsp"><button>Add</button></a>
		</form>
		<br>
		<a href="/AdminHome.jsp"><button>back</button></a>
		</center>
</body>
</html>