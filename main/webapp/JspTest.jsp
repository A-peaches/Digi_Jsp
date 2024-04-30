<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.*" %>
<html>
<head>
<meta charset="EUC-KR">
<title>import 속성 테스트</title>
</head>
<body>
	<div style="text-align : center">
	<h1>현재 시간은?</h1>
	<HR>
	<h3>현재 시간은 <%=new SimpleDateFormat().format(new Date()) %>입니다.</h3>
	</div>
</body>
</html>