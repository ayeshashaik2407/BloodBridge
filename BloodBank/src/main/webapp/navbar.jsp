<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
       integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="navbar.css">
<title>Insert title here</title>
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
<%String s =(String)request.getSession().getAttribute("role");	 
if(s.equals("user")){
%>
                <a class="nav-link" href="donate.jsp" id="navItem2">Donate</a>
                <a class="nav-link" href="reciever.jsp" id="navItem3">Patient Registration</a> 
                <a class="nav-link" href="Available" id="navItem3">Donors</a>       
                 <a class="nav-link" href="Nearby" id="navItem3">Nearby Hospitals</a><%} %>  
 <%String k =(String)request.getSession().getAttribute("role");	 
if(k.equals("Hospital")){
%>
   <a class="nav-link" href="hospital.jsp" id="navItem2">Hospital Registration Form</a>
          <a class="nav-link" href="Patientd" id="navItem2">Patients</a>
   
      <%} %>    
      <%String l =(String)request.getSession().getAttribute("role");	 
if(l.equals("Admin")){
%>
   <a class="nav-link" href="Userd" id="navItem2">Users</a>
     <a class="nav-link" href="Available" id="navItem2">Donors</a>
       <a class="nav-link" href="Patientd" id="navItem2">Patients</a>
         <a class="nav-link" href="Nearby" id="navItem2">Hospitals</a>
      <%} %>          
                  <a class="nav-link" href="Logout" id="navItem3">Logout</a> 
                  
            </div>
        </div>
    </div>
</nav>
</body>
</html>