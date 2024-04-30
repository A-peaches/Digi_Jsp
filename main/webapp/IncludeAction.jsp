<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- 	<jsp:include page="Footer2.jsp"> --%>
	<h3>안뇽!</h3>
	<jsp:forward page="Footer2.jsp">
		<jsp:param value="pipi@apech.com" name="email"/>
		<jsp:param value="010-1004-1004" name="tel"/>
	</jsp:forward>
<%-- 	</jsp:include> --%>
</body>
</html>