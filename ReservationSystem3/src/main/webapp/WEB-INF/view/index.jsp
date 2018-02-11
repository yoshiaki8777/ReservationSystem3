<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
 
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
	
	<f:form modelAttribute="loginForm" action="login" method="post">
	
	<div>
	ユーザ名<input type="text" id="loginName" name="loginName">
	<f:errors path="loginName" element="div" cssStyle="color:red" />
	</div>
	<div>
	パスワード<input type="text" id="loginPassword" name="loginPassword">
	<f:errors path="loginPassword" element="div" cssStyle="color:red" />
	</div>

	<div>
	<input type="submit" value="ログイン">
	</div>
	
	</f:form>
	    
	</body>
</html>