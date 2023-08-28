<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Signup</title>
<style>
  /* CSS Styles */
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(to right, #ff0000, #00ff00, #0000ff);
    animation: gradientAnimation 10s ease infinite;
  }

  @keyframes gradientAnimation {
    0% {
      background-position: 0% 50%;
    }
    50% {
      background-position: 100% 50%;
    }
    100% {
      background-position: 0% 50%;
    }
  }

  .container {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    animation: fadeIn 1s ease-in-out;
  }

  @keyframes fadeIn {
    from {
      opacity: 0;
    }
    to {
      opacity: 1;
    }
  }

  h1 {
    color: green;
    font-size: 24px;
    margin: 0 0 20px;
    text-align: center;
  }

  form {
    text-align: center;
  }

  input[type="text"],
  input[type="email"],
  input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }

  input[type="radio"] {
    margin-right: 5px;
  }

  button[type="reset"],
  button[type="submit"] {
    padding: 10px 20px;
    background-color: #3f51b5;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-top: 10px;
  }

  a {
    text-decoration: none;
    color: #3f51b5;
    font-weight: bold;
  }

  a:hover {
    text-decoration: underline;
  }

  .message {
    color: red;
    text-align: center;
    margin-top: 20px;
    animation: fadeIn 1s ease-in-out;
  }
</style>
</head>
<body>
  <div class="container">
    <h1>Student Signup</h1>
    <h1 style="color:green">${success}</h1>
    <h1 style="color:red">${fail}</h1>
    <form action="/student/signup" method="post" enctype="multipart/form-data">
      Name:<br>
      <input type="text" name="name" required><br>
      Email:<br>
      <input type="email" name="email" required><br>
      USN:<br>
      <input type="email" name="usn" required><br>
      Mobile:<br>
      <input type="text" name="mobile" required><br>
      Gender:<br>
      <input type="radio" name="gender" value="male" required> Male
      <input type="radio" name="gender" value="female" required> Female<br>
      Date of Birth:<br>
      <input type="date" name="date" required><br>
      Password:<br>
      <input type="password" name="password" required><br>
       SSLC Percentage:<br>
      <input type="text" name="sslc" required><br>
       PUC Percentage:<br>
      <input type="text" name="puc" required><br>
      PICTURE: <br>
      <input type="file" name="pic" accept="image/png, image/gif, image/jpeg"  size="200KB">
      <button type="reset">Cancel</button>
      <button type="submit">Signup</button>
    </form>
    <p class="message">Note: Fill in all the required fields</p>
    <br>
    <a href="/StudentLogin.jsp">Back</a>
  </div>
</body>
</html>
