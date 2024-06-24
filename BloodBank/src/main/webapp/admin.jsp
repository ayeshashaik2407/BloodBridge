<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
       integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="navbar.css">
<title>Admin</title>
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
                    Dashboard
                    <span class="sr-only">(current)</span>
                </a>
                <a class="nav-link" href="Users.jsp" id="navItem2">Users</a>
                <a class="nav-link" href="Patients.jsp" id="navItem3">Patients</a> 
                <a class="nav-link" href="Donors.jsp" id="navItem3">Donors</a> 
                 <a class="nav-link" href="Hospitals.jsp" id="navItem3">Hospitals</a>                                        
                  <a class="nav-link" href="Logout" id="navItem3">Logout</a> 
            </div>
        </div>
    </div>
</nav>
</body>
</html>