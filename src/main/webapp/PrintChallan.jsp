<%@page import="java.util.Random"%>
<%@page import="org.spring.jesa5.dto.Student"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<style type="text/css">
body {
    background: grey;
    margin-top: 120px;
    margin-bottom: 120px;
}
.col-md-6 img{
width: 50vw;
height: 50vh;
}
.col-md-6 h1{
text-align: right;
text-decoration: underline;
text-shadow:  12px aqua;
}
.col-12{
background-color: skyblue;
}
</style>
<title>Challan</title>
</head>
<body>

<%Student student=(Student)session.getAttribute("student"); %>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-0">
                    <div class="row p-5">
                        <div class="col-md-6">
                          <h1 style="color: red";>UK UNIVERSITY</h1>
                            <img src="https://www.thenation.com/wp-content/uploads/2017/09/Moore-Deseg-Nation-3-img.jpg">
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-1">Challan</p>
                            <p class="text-muted">Due to: <%=LocalDate.now() %></p>
                        </div>
                    </div>

                    <hr class="my-5">

                    <div class="row pb-5 p-5">
                        <div class="col-md-6">
                            <p class="font-weight-bold mb-4">Student Details</p>
                            <p class="mb-1"><%=student.getName() %></p>
                            <p></p>
                            <p class="mb-1"><%=student.getEmail() %></p>
                            <p class="mb-1"><%=student
                            .getMobile()%></p>
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-4">Payment Details</p>
                            <p class="mb-1"><span class="text-muted">VAT: </span> 1425782</p>
                            <p class="mb-1"><span class="text-muted">VAT ID: </span> <%=new Random().nextInt(10000,100000) %></p>
                            <p class="mb-1"><span class="text-muted">Payment Type: </span> Offline/Bank</p>
                            <p class="mb-1"><span class="text-muted">Name: </span> <%=student.getName() %></p>
                        </div>
                    </div>

                    <div class="row p-5">
                        <div class="col-md-12">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="border-0 text-uppercase small font-weight-bold">ID</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Course Name</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Stream Name</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Course Fee</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Stream Fee</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%=student.getId() %></td>
                                        <td><%=student.getCourse().getName() %></td>
                                        <td><%=student.getStream().getName() %></td>
                                        <td><%=student.getCourse().getFee() %></td>
                                        <td><%=student.getStream().getFee() %></td>
                                        <td><%=(student.getStream().getFee()+student.getCourse().getFee() )%></td>
                                    </tr>
                                  
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Grand Total</div>
                            <div class="h2 font-weight-light"><%=(student.getStream().getFee()+student.getCourse().getFee() )%></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
<button onclick="window.print()">Print</button>
</div>



</body>
</html>