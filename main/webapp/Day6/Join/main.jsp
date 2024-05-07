<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.UserBean" %>
<% request.setCharacterEncoding("UTF-8"); %>   
<!DOCTYPE html>
<html>
<% UserBean user = (UserBean)session.getAttribute("user"); 
   boolean isLogin = (user != null);
   boolean isAdmin = isLogin && user.isAdmin(); // 로그인 상태 확인 후 isAdmin 접근;
%>

<head>
<link rel="styleSheet" type="text/css" href="../../CSS.css">
<meta charset="UTF-8">
<title>Main</title>
<script type="text/javascript">
	function Userlogout() {
		alert("로그아웃이 완료되었습니다!");
		window.location.href = "/Day6/Join/logout.jsp";
	}
	
	function loginCheck() {
		var isLogin = <%= isLogin %>;
		if(!isLogin) {
		  alert("로그인이 필요한 서비스입니다!");
		  window.location.href = "/Day6/Join/loginForm.jsp";
		} 
	}
</script>
</head>
<body onload="loginCheck()">
<br> 
<div style="width:60%; margin:auto;">
<%if (user != null) { %>
❤️ <%=user.getName() %> ❤️ 님 환영합니다 !!  |  
	누적 로그인 횟수 : <%=session.getAttribute("loginCount") %>  |
	<input type=button onclick="Userlogout()" name="logout" value="Logout"/>

<hr>
<h3>🔍나의 정보는?</h3>
<p>id : <%= user.getId() %></p>
<p>pw : <%= user.getPw() %></p>
<p>email : <%= user.getEmail() %></p>
<p>name : <%= user.getName() %></p>
<p>birth : <%= user.getBirth() %></p>
<p>hobby : <%= user.getHobby() %></p>
<p>info : <%= user.getInfo() %></p>
</div>
<%} %>
<%if (isAdmin) { %>
<a href="/Day6/Join/member_list.jsp"; >회원 정보 조회</a> 
<%} %>
</body>
</html>