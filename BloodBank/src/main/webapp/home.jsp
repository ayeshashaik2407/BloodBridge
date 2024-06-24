<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BloodBridge</title>
    <link rel="stylesheet" href="home.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
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
                <a class="nav-link active" id="navItem1" href="#home">
                    Home
                    <span class="sr-only">(current)</span>
                </a>
                <a class="nav-link" href="#whydb" id="navItem2">Why Donate Blood?</a>
                <a class="nav-link" href="#signup" id="navItem3">SignUp</a>
                 <a class="nav-link" href="login.jsp" id="navItem3">Login</a>                      
            </div>
        </div>
    </div>
</nav>
<header class="header" id="home">
    <div class="container">
        <h1>Donate Blood, Save Lives</h1>
        <p>Your kindness can change the world. Start with a donation.</p>
    </div>
</header>
<section class="hero">
    <div class="container">
        <img src="https://mmhrc.in/file/wp-content/uploads/2022/03/blood-donation.jpg" alt="Blood donation" class="hero-image">
    </div>
</section>
<section class="benefits" id="whydb">
    <div class="container">
        <h2>Why Donate Blood?</h2>
        <div class="benefit-items">
            <div class="benefit-item">
                <h3>Save Lives</h3>
                <p>Every donation can save up to three lives.</p>
            </div>
            <div class="benefit-item">
                <h3>Improve Health</h3>
                <p>Regular blood donation helps in maintaining good health.</p>
            </div>
            <div class="benefit-item">
                <h3>Free Check-up</h3>
                <p>Get a free health check-up with every donation.</p>
            </div>
            <div class="benefit-item">
                <h3>Join Community</h3>
                <p>Become a part of our community of heroes.</p>
            </div>
        </div>
    </div>
</section>
<section class="form-section" id="signup">
    <div class="container">
        <h2>Sign Up to Donate</h2>
        <form action="Home" method="POST">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required>
            <label for="username">User name:</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <label for="conpassword">Confirm Password:</label>
            <input type="password" id="conpassword" name="conpassword" required>
              <label for="role">Select your Role:</label>
              <select id="role" name="role">
            <option value="user" required>User</option>
            <option value="Hospital" required>Hospital</option>
            </select>
        <br><br>
            <button type="submit">Sign Up</button><br/>
                  <%String message=(String)request.getAttribute("message");
if(message!=null){%>
        <h3 class="error-message">
            <%= message %>
        </h3>
<% 	
}
%>
         <center>
                <p>Already Have an Account?</p>
                <a href=login.jsp>Login Here</a>
            </center>
        </form>
    </div>
</section>

<footer class="footer">
    <div class="container">
        <p>&copy; 2024 Blood Bank. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </div>
</footer>
</body>
</html>
