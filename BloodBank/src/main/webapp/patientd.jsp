<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Details</title>
<link rel="stylesheet" type="text/css" href="nearby.css">

</head>
<body>
<jsp:include page="navbar.jsp" />
<br/>
<br/>
<br/>
<br/>
<%
if(request.getSession().getAttribute("user_id")!=null){
%>
<div class="a">
<table>
 <tr>
    <th>Name</th>
    <th>Age</th>
    <th>Gender</th>
    <th>Contact Number</th>
     <th>Address</th>
     <th>Medical Condition</th>
    <th>Blood Group</th>
  </tr>
<%ResultSet message=(ResultSet)request.getAttribute("message");
while(message.next()){%>
 <tr>
    <td><%=message.getString(2) %></td>
     <td><%=message.getString(3) %></td>
      <td><%=message.getString(4) %></td>
       <td><%=message.getString(5) %></td>
        <td><%=message.getString(6) %></td>
         <td><%=message.getString(7) %></td>
          <td><%=message.getString(8) %></td>

  </tr>
<% 	
}
%>
</table>
</div>
<%}
else{
%>
 <a  href="home.jsp" class=="logout">Session TimeOut<br/></a><%} %>
</body>
</html>