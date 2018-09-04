<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
		Bienvenue :&nbsp; 
		<security:authorize access="isAuthenticated()">
    		<security:authentication property="principal.username" /> 
		</security:authorize>
		<br/>
		Roles :&nbsp;
		<security:authorize access="isAuthenticated()">
			<security:authentication property="principal.authorities"/>
		</security:authorize>
		<br/><br/><br/><br/>
		<c:url value="showMessage.html" var="messageUrl" />
		<a href="${messageUrl}">Click to enter</a>
		<br/><br/><br/><br/>
		<a href="<c:url value="/logout" />">Logout</a>
	</body>
</html>
