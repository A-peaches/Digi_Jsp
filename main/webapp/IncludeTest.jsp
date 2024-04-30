<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include</title>
</head>
<body>
<div style="text-align : center">
<h1>Include 지시어 테스트</h1>
<HR>

<%@include file ="List.jsp" %>
<div style="margin-top:50px">
<%@include file ="Contents.jsp" %>
<%@include file ="Info.jsp" %>
</div>
</div>
</body>
</html>