<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Student Admission</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      overflow: hidden;
    }

    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .fade-in {
      animation: fadeIn 1s ease;
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
      color: #fff;
      font-size: 28px;
      text-align: center;
      margin-bottom: 10px;
    }

    h2 {
      color: #fff;
      font-size: 20px;
      text-align: center;
      margin-bottom: 20px;
    }

    .buttons {
      display: flex;
      justify-content: center;
      margin-top: 30px;
    }

    .buttons a {
      margin: 0 10px;
    }

    button {
      padding: 10px 20px;
      background-color: #4CAF50;
      border: none;
      color: white;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color: #45a049;
    }

    .background {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: -1;
    }

    .background:before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: linear-gradient(45deg, #EE7752, #E73C7E, #23A6D5, #23D5AB);
      background-size: 400% 400%;
      animation: gradient 15s ease infinite;
    }

    @keyframes gradient {
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
  </style>
</head>
<body>
  <div class="background"></div>
  <div class="container fade-in">
    <h1>HELLO ${name}</h1>
    <h2>YOU HAVE OPTED FOR ${course} COURSE IN ${stream} STREAM</h2>
    <h2>YOU ARE ELIGIBLE FOR ${quota} QUOTA</h2>
    <h1>YOUR TOTAL FEE AMOUNT &#8377:- ${fee}</h1>
    <div class="buttons">
      <a href="/student/accept"><button>Accept</button></a>
      <a href="/student/reject"><button>Reject</button></a>
    </div>
  </div>
</body>
</html>
