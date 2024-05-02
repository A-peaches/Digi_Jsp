<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="styleSheet" type="text/css" href="../CSS.css">
<meta charset="EUC-KR">
<title>데이터 넘기기</title>
</head>
<body>
	<%
		String id = (String)request.getParameter("id");
		String email = (String)request.getParameter("email");
		String tel = (String)request.getParameter("tel");
	%>
	
	<br><h3>최종으로 넘겨온 데이터!!</h3><br><hr><br>
	<h5>id : <%=id %><br></h5>
	<h5>email : <%=email %><br></h5>
	<h5>tel : <%=tel %><br></h5>
	<br>
</body>
</html>