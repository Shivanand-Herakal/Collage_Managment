<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Login</title>
<style>
  /* CSS Styles */
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    overflow: hidden;
  }

  .background-animation {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1;
    background: linear-gradient(45deg, #ff00cc, #cc00ff, #00ccff, #00ffcc);
    background-size: 400% 400%;
    animation: backgroundGradient 15s ease infinite;
  }

  @keyframes backgroundGradient {
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
    color: #3f51b5;
    font-size: 24px;
    margin: 0 0 20px;
    text-align: center;
    animation: slideIn 1s ease-in-out;
  }

  @keyframes slideIn {
    from {
      transform: translateY(-100px);
      opacity: 0;
    }
    to {
      transform: translateY(0);
      opacity: 1;
    }
  }

  form {
    text-align: center;
  }

  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }

  button {
    padding: 10px 20px;
    background-color: #3f51b5;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    margin-top: 10px;
  }

  button[type="reset"] {
    background-color: #ccc;
    margin-right: 10px;
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
<h1 style="color:green">${success}</h1>
<h1 style="color:red">${fail}</h1>
<form action="/faculty/login" method="post">
Email:<input type="text" name="email" placeholder="Enter email" required="required">
Password:<input type="text" name="password" placeholder="Enter password" required="required">
<button>Login</button><button type="reset">Cancel</button>
</form>
<a href="/FacultySignup.jsp"><button>New? Click here to Create an Account</button></a>
<a href="/"><button>Home</button></a>
</body>
</html>
    