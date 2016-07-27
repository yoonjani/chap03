<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합구하기</title>
</head>
<body>
<%
	int sum = 0;
	for (int i = 1; i<=10; i++) {
		sum = sum + i;
	}
%>
<h1>1부터 10까지의 합은  <%= sum %></h1>

<br>

<%
int sum2 = 0;
for (int i = 11; i <=20; i++) {
	sum2 = sum2 + i;	
}
%>
<h1>11부터 20까지의 합은 <%= sum2 %>입니다.</h1>
</body>
</html>