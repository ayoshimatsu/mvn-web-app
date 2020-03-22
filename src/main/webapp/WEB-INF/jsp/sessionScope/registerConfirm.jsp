<%@
page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
%>
<%@ page import="com.sample_sessionScopeModel.User" %>
<% User registerUser = (User)session.getAttribute("registerUser"); %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register User</title>
</head>
<body>
    <p>Register the following user</p>
    <p>
        Login ID:<%= registerUser.getId() %><br>
        Name:<%= registerUser.getName() %><br>
    </p>
    <a href="/mvn-web-app/registerUserSample">Back</a>
    <a href="/mvn-web-app/registerUserSample?action=done">Register</a>
</body>
</html>