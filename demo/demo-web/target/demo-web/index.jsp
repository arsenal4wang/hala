<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>home</title>
</head>
<body>
<ul>
<li>产品模块
		<ul>
			<li><a href="${pageContext.request.contextPath}/product/product/list">产品表</a></li>
			<li><a href="${pageContext.request.contextPath}/product/category/list">类型表</a></li>
		</ul>
</li>
</ul>
<%
	//直接跳转进入主页面
	response.setHeader("refresh","0;url =product/product/list");
%>
</body>
</html>