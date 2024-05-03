<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginState</title>
<% request.setCharacterEncoding("euc-kr"); %>
<script type="text/javascript">

	function checkLogin() {
	<%if( session.getAttribute("id") == null ){%>
		//리다이렉트
		alert("로그인이 필요합니다!");
		window.location.href= "login.jsp";
	<% } %>
	}
	

</script>
</script>

</head>
<body onload="checkLogin()">

	<p>
	♥ <%=session.getAttribute("id") %> ♥ 님 환영합니다 !!  |  
	누적 로그인 횟수 : <%=session.getAttribute("loginCount") %>  |
	<input type=button onclick="logout()" name="logout" value="Logout"/>
	<script type="text/javascript">
		function logout() {
			window.location.href = "logout.jsp";
		}
	</script>
	</p>
</body>
</html>