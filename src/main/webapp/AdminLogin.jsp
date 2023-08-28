<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  background: linear-gradient(to right, #1b1464, #3f51b5);
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

h1 {
  color: #fff;
  margin-bottom: 20px;
  text-align: center;
}

form {
  background-color: rgba(255, 255, 255, 0.9);
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
  animation: fadeIn 1s ease-in-out;
}

input[type="text"],
input[type="password"] {
  padding: 10px;
  margin-bottom: 10px;
  border-radius: 5px;
  border: none;
}

button {
  padding: 10px 20px;
  background-color: #e91e63;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

button[type="reset"] {
  background-color: #757575;
  margin-right: 10px;
}

a {
  text-decoration: none;
  color: #fff;
}

button:hover {
  opacity: 0.8;
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

/* Additional Styling */

h1#success {
  color: green;
  animation: fadeIn 1s ease-in-out;
}

h1#fail {
  color: red;
  animation: fadeIn 1s ease-in-out;
}
</style>
</head>
<body>
<h1 style="color:green">${success}</h1>
<h1 style="color:red">${fail}</h1>
<form action="/admin/login" method="post">
Email:<input type="text" name="email" placeholder="Enter email" required="required"><br>
Password:<input type="text" name="password" placeholder="Enter password" required="required"><br>
<button type="reset">Cancel</button>
<a href="/AdminHome.jsp"></a><button>Login</button>
</form>
<br>
<a href="/"><button>Home</button></a>
</body>	
</html>