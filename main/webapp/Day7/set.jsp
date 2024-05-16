<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="../CSS.css"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<h3>c:set</h3>
	<c:set value="Apeach World!" var="msg" />
	<hr>
	<p>msg : ${msg}</p>
	<p>msg : <%= pageContext.getAttribute("msg") %></p>
</body>
</html>