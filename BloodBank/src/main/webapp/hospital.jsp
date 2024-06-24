<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Registration Form</title>
<link rel="stylesheet" type="text/css" href="hospital.css">
</head>
<body>
<jsp:include page="navbar.jsp" />
<br/>
<%
if(request.getSession().getAttribute("user_id")!=null){
%>
<div class="form-container">
    <h2>Hospital Registration Form</h2>
    <form action="Hospital" method="POST">
     <%String message=(String)request.getAttribute("message");
if(message!=null){%>
        <h3 class="error-message">
            <%= message %>
        </h3>
<% 	
}
%>
        <div class="form-group">
            <label for="name">Hospital Name:</label>
            <input type="text" id="name" name="hname" required>
        </div>
         <div class="form-group">
            <label for="name">Hospital 	Address:</label>
            <input type="text" id="name" name="haddress" required>
        </div>
         
        <div class="form-group">
            <label for="phone">Contact Number:</label>
            <input type="tel" id="phone" name="phone" required>
        </div>     
        <div class="form-group">
            <label for="emailaddress">Email Address:</label>
            <input type="mail" id="address" name="email" required>
        </div>
         <div class="form-group">
            <label for="phone">Blood Bank Contact Number:</label>
            <input type="tel" id="phone" name="phoneb" required>
        </div>
        <div class="form-group">
         <fieldset >
            <legend>Blood Availability</legend>
            
            <label for="bloodTypeAplus">A+:</label>
            <input type="number" id="bloodTypeAplus" name="bloodTypeAplus" min="0" placeholder="Quantity" required><br><br>
            
            <label for="bloodTypeAminus">A-:</label>
            <input type="number" id="bloodTypeAminus" name="bloodTypeAminus" min="0" placeholder="Quantity" required><br><br>
            
            <label for="bloodTypeBplus">B+:</label>
            <input type="number" id="bloodTypeBplus" name="bloodTypeBplus" min="0" placeholder="Quantity" required><br><br>
            
            <label for="bloodTypeBminus">B-:</label>
            <input type="number" id="bloodTypeBminus" name="bloodTypeBminus" min="0" placeholder="Quantity" required><br><br>
            
            <label for="bloodTypeABplus">AB+:</label>
            <input type="number" id="bloodTypeABplus" name="bloodTypeABplus" min="0" placeholder="Quantity" required><br><br>
            
            <label for="bloodTypeABminus">AB-:</label>
            <input type="number" id="bloodTypeABminus" name="bloodTypeABminus" min="0" placeholder="Quantity" required><br><br>
            
            <label for="bloodTypeOplus">O+:</label>
            <input type="number" id="bloodTypeOplus" name="bloodTypeOplus" min="0" placeholder="Quantity" required><br><br>
            
            <label for="bloodTypeOminus">O-:</label>
            <input type="number" id="bloodTypeOminus" name="bloodTypeOminus" min="0" placeholder="Quantity" required><br><br>
        </fieldset>
          </div>
          <div class="form-group">
            <label for="name">Operating Hours of Blood Bank:</label>
            <input type="text" id="name" name="hb" required>
        </div>
         <div class="form-group">
            <label for="name">Emergency Contact Number for Blood Requests:</label>
            <input type="tel" id="name" name="eb" required>
        </div>
        <button type="submit" class="submit-button">Submit</button>
        
    </form>
</div>
<%}
else{
%>
<br/>
<br/>
<br/>
<h1>Session Timeout....Please Login Again</h1>
<%} %>
</body>
</html>
