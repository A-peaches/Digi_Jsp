<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
		<%
		session.removeAttribute("cart");
		%>
<script>
	function check() {
		alert("������ �Ϸ�Ǿ����ϴ�!");
		window.location.href = "cookieList.jsp";
	}
</script>
</head>
<body onload="check()">
		
</body>
</html>