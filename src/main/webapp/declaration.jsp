<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  %>
<!DOCTYPE html>
<html>
<head>
<meta "charset=UTF-8">
<title>declaration.jsp</title>
</head>
<body>
<%!
	int x = 99;
	int multiply(int a, int b) {
		int c = a * b;
		return c;
	}
	int add(int a, int b) {
		int c = a + b;
		return c;
	}
	int subtraction(int a, int b) {
		int c = a - b;
		return c;
	}
%> 
	<h1>10*25 = <%= multiply(10,25) %></h1>
	<h1>10+25 = <%= add(10,25) %></h1>
	<h1>25-10 = <%= subtraction(25,10) %></h1>
	<h1> x = <%= x %></h1>
	
	<h1>Post = <%=request.getLocalPort() %></h1>
	
</body>
</html>