<!doctype html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html >
<head>
<fmt:setBundle basename="MainResource" var="main"/>
<title><fmt:message key="system.name" bundle="${main}"/></title>	
  
<sitemesh:head />
	<%@include file="/common/web-taglib.jsp" %>
	<%@include file="/common/common-head.jsp" %>
</head>
<body>
  <!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Uplan UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]--> 
	<%@include file="/plugins/parts/header.jsp" %>
  <div class="up-cf admin-main"> 
    <%@include file="/plugins/parts/left.jsp" %>
   <!-- content start --> 
   <sitemesh:body/>
   <!-- content end --> 
  </div> 
  <a class="up-icon-btn up-icon-th-list up-show-sm-only admin-menu" data-up-offcanvas="{target: '#admin-offcanvas'}"></a>
<%@include file="/plugins/parts/footer.jsp" %>
<%@include file="/common/common-footer.jsp" %> 
</body>
</html>
