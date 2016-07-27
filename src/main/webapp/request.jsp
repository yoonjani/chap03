<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset ="UTF-8">
<title>request.jsp</title>
</head>
<body>
<h1>REQUEST STUDY!!!</h1>
id = <%= request.getParameter("id") %> <br>
pw = <%= request.getParameter("pw") %>
</body>
</html>