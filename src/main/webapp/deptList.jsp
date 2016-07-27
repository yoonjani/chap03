<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.hybrid.domain.Dept"%>
<%@page import="java.util.List"%>
<%@page import="com.hybrid.mapper.DeptMapper"%>
<%@page import="com.hybrid.fx.MainApplication"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deptList.jsp</title>
</head>
<body>

<%
	ApplicationContext ctx =  WebApplicationContextUtils.getWebApplicationContext(getServletContext());
	DeptMapper mapper = ctx.getBean(DeptMapper.class);	
	
	List<Dept> depts = mapper.readAll();
	for(Dept dept : depts) {
		System.out.println(dept.getDeptno() + " " + dept.getDname() + " " + dept.getLoc());
		out.println(dept.getDeptno() + " " + dept.getDname() + " " + dept.getLoc() + "<br>");
	}
%>

</body>
</html>