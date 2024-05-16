<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="../CSS.css"/>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	
<meta charset="EUC-KR">
<title>Choose</title>
</head>
<body>
	<h3>Choose</h3><br>
	<form>
	<select name="sel">
		<option>-</option>
		<option>pipi</option>
		<option>cici</option>
		<option>cucu</option>
		<option>popo</option>
		<option>apeach</option>
	</select>
	<input type ="submit" class="btn btn-success" value="선택"/>
	<hr>
	<c:choose>
		<c:when test="${param.sel == 'pipi'}">
			pipi를 선택하셨네요!
		</c:when>
		<c:when test="${param.sel == 'cici'}">
			cici를 선택하셨네요!
		</c:when>
		<c:when test="${param.sel == 'cucu' }">
			cucu를 선택하셨네요!
		</c:when>
		<c:when test="${param.sel == 'popo' }">
			popo를 선택하셨네요!
		</c:when>
		<c:otherwise>
			피치츄포를 선택하지 않으셨네요! 
		</c:otherwise>
	</c:choose>
</body>
</html>