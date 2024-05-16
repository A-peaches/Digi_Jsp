<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="el.Eltest" %>
<link rel="stylesheet" type="text/css" href="../CSS.css"/>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>forEach</title>
</head>
<body>
<h3>forEach Test</h3><hr>
<form name="form1" method="post" action="foreach2.jsp">
	<jsp:useBean id="eltest" class="el.Eltest" scope="session"/>
	
	<select name="sel">
		<option>-</option>
		<c:forEach items="${eltest.apeach}" var="item">
			<option>${item}</option>
		</c:forEach>
	</select>
	<input type="submit" value="선택" class="btn btn-warning btn-sm"/>
</form>
</body>
</html>