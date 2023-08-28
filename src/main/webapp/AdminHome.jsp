<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<style>
  body {
    background: url('../images/adminpage.webp') center center fixed;
    background-size: cover;
    animation: slideshow 20s infinite;
  }

  @keyframes slideshow {
    0% {
      background: url('../images/cafeteria.png') center center fixed;
      background-size: cover;
    }
    25% {
      background: url('../images/library.png') center center fixed;
      background-size: cover;
    }
    50% {
      background: url('../images/newyork.png') center center fixed;
      background-size: cover;
    }
    75% {
      background: url('../images/washington.png') center center fixed;
      background-size: cover;
    }
    100% {
      background: url('../images/cafeteria.png') center center fixed;
      background-size: cover;
    }
  }

  h1 {
    color: #FFFFFF;
  }

  h2 {
    margin-top: 20px;
  }

  .buttons-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin-top: 30px;
  }

  .buttons-container a {
    text-decoration: none;
    margin: 10px;
  }

  .buttons-container button {
    background-color: #4CAF50;
    color: #FFFFFF;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .buttons-container button:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
<h1 style="align-items:center;color: red">Welcome to Admin Home Page</h1>
<h2 style="color:green">${success}</h2>
<h2 style="color:red">${fail}</h2>
<div class="buttons-container">
  <a href="/AddCourse.jsp"><button>Add Course</button></a>
  <a href="/admin/stream"><button>Add Stream</button></a>
  <a href="/admin/admission"><button>Approve Admission</button></a>
  <a href="/admin/update_stream"><button>Update Fee</button></a>
  <a href="/staff/fetchall"><button>Approve Staff</button></a>
  <a href="/faculty/fetchall"><button>Approve Faculty</button></a>
  <a href="/logout"><button>Logout</button></a>
</div>
</body>
</html>
