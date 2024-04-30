<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div style="text-align:center;">
	<h3>footer.jsp에서 출력했어요!</h3> <hr>
	<%=request.getParameter("email") %> <br>
	<%=request.getParameter("tel") %>
</div>
</body>
</html>