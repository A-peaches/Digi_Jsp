<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="styleSheet" type="text/css" href="../../CSS.css">
<title>File upload Check</title>
</head>
<%
	request.setCharacterEncoding("euc-kr");
	String name=request.getParameter("name");
	String subject=request.getParameter("subject");
	String fileName1=request.getParameter("fileName1");
	String fileName2=request.getParameter("fileName2");
%>
<body>
	<h3>올린 사람 : <%=name %></h3>
	<h3>제목 : <%=subject %></h3>
	<h3>파일명 1 : <a href="../../upload/<%=fileName1 %>"><%=fileName1 %></a></h3>
	<h3>파일명 2 : <a href="../../upload/<%=fileName2 %>"><%=fileName2 %></a></h3>
</body>
</html>