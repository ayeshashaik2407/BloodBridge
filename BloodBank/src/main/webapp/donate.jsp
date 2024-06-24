<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donation Registration Form</title>
<link rel="stylesheet" type="text/css" href="donate.css">
</head>
<body>
<jsp:include page="navbar.jsp" />
<br/>
<%
if(request.getSession().getAttribute("user_id")!=null){
%>
<div class="form-container">
    <h2>Enter Your Details</h2>
    <form action="Donate" method="POST">
     <%String message=(String)request.getAttribute("message");
if(message!=null){%>
        <h3 class="error-message">
            <%= message %>
        </h3>
<% 	
}
%>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>
        </div>
         <div class="form-group">
            <label>Gender:</label><br>
            <input type="radio" id="genderMale" name="gender" value="Male" required>
            <label for="genderMale">Male</label>
            <input type="radio" id="genderFemale" name="gender" value="Female" required>
            <label for="genderFemale">Female</label>
            <input type="radio" id="genderOther" name="gender" value="Other" required>
            <label for="genderOther">Other</label>
        </div>
        <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" required>
        </div>     
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>
        </div>
        <div class="form-group">
            <label>Smoking:</label><br>
            <input type="radio" id="smokingYes" name="smoking" value="Yes">
            <label for="smokingYes">Yes</label>
            <input type="radio" id="smokingNo" name="smoking" value="No">
            <label for="smokingNo">No</label>
        </div>
        <div class="form-group">
            <label>Alcohol Consumption:</label><br>
            <input type="radio" id="alcoholYes" name="alcohol" value="Yes">
            <label for="alcoholYes">Yes</label>
            <input type="radio" id="alcoholNo" name="alcohol" value="No">
            <label for="alcoholNo">No</label>
        </div>
        <div class="form-group">
            <label for="bloodGroup">Blood Group:</label>
            <select id="bloodGroup" name="bloodGroup" required>
                <option value="">Select</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
            </select>
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
