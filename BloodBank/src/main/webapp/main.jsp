<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<link rel="stylesheet" type="text/css" href="main.css"></head>
<body>
<jsp:include page="navbar.jsp" />
<div class="background-container">
  <div class="welcome-message">
        <h1>Welcome ,<%=(String)request.getSession().getAttribute("username")%></h1>
    </div>
</div>
</body>
</html>