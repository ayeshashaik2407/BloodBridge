<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Section</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="./BloodBridge.jpg"
                class="food-munch-logo" />
                
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ml-auto">
                <a class="nav-link active" id="navItem1" href="home.jsp">
                    Home
                </a>
                <a class="nav-link" href="home.jsp#whydb" id="navItem2">Why Donate Blood?</a>
                <a class="nav-link" href="home.jsp#signup" id="navItem3">SignUp</a>       
                
            </div>
        </div>
    </div>
</nav>
  <br/>
   <br/>
   <section class="form-section" id="login">
     <%String message=(String)request.getAttribute("message"); 
        if(message!=null){%>
        <h6><%=message %></h6>
        <%} %>
    <div class="container">
        <h2>Login</h2>
        <form action="Login" method="POST">
            <label for="username">User name:</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <button type="submit">Login</button><br/>
            <br/>
        </form>
    </div>
</section>
</body>
</html>