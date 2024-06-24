<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="nearby.css">
<meta charset="UTF-8">
<title>Hospitals List</title>
</head>
<body>
<jsp:include page="navbar.jsp" />
<br/>
<br/>
<br/>
<br/>
<%
if(request.getSession().getAttribute("user_id") != null) {
%>
<div class="a">
    <table>
        <tr>
            <th>Hospital Name</th>
            <th>Hospital Address</th>
            <th>Hospital Phone</th>
            <th>Hospital Email</th>
            <th>Blood Bank Contact Number</th>
            <th>Blood Type A+</th>
            <th>Blood Type A-</th>
            <th>Blood Type B+</th>
            <th>Blood Type B-</th>
            <th>Blood Type AB+</th>
            <th>Blood Type AB-</th>
            <th>Blood Type O+</th>
            <th>Blood Type O-</th>
            <th>Operating Hours of Blood Bank</th>
            <th>Emergency Contact Number</th>
        </tr>
        <% 
        ResultSet message = (ResultSet)request.getAttribute("message");
        while(message.next()) {
        %>
        <tr>
            <td><%= message.getString("hospital_name") %></td>
            <td><%= message.getString("hospital_address") %></td>
            <td><%= message.getString("hospital_phone") %></td>
            <td><%= message.getString("hospital_email") %></td>
            <td><%= message.getString("blood_bank_contact_number") %></td>
            <td><%= message.getInt("bloodTypeAplus") %></td>
            <td><%= message.getInt("bloodTypeAminus") %></td>
            <td><%= message.getInt("bloodTypeBplus") %></td>
            <td><%= message.getInt("bloodTypeBminus") %></td>
            <td><%= message.getInt("bloodTypeABplus") %></td>
            <td><%= message.getInt("bloodTypeABminus") %></td>
            <td><%= message.getInt("bloodTypeOplus") %></td>
            <td><%= message.getInt("bloodTypeOminus") %></td>
            <td><%= message.getString("operating_hours_blood_bank") %></td>
            <td><%= message.getString("emergency_contact_num") %></td>
        </tr>
        <% 
        }
        %>
    </table>
</div>
<%} else { %>
<a href="home.jsp" class="logout">Session Timeout<br/></a>
<%} %>
</body>
</html>
