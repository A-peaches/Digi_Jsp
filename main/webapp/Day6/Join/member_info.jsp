<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.UserBean" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>   
<!DOCTYPE html>
<html>
<head>
<link rel="styleSheet" type="text/css" href="../../CSS.css"/>
<meta charset="UTF-8"">
<title>Member list</title>
</head>
<% 
  String id = request.getParameter("id");
  UserBean infoUser = UserBean.detailUser(id);
  UserBean user = (UserBean)session.getAttribute("user"); 
	boolean isLogin = (user != null);
	boolean isAdmin = isLogin && user.isAdmin(); // 로그인 상태 확인 후 isAdmin 접근;
%>
 <script>

	
	function loginCheck() {
		var isLogin = <%= isLogin %>;
		var isAdmin = <%= isAdmin %>;
		if(!isLogin || !isAdmin) {
		  alert("관리자만 이용할 수 있습니다!");
		  window.location.href = "/Day6/Join/loginForm.jsp";
		} 
	}
	
 </script>
<body onload="loginCheck()">
<h1>🛠️ 회원 상세 정보</h1>
<hr>
<form >
	<table border="1">
		<p>id : <%= infoUser.getId() %></p>
		<p>pw : <%= infoUser.getPw() %></p>
		<p>email : <%= infoUser.getEmail() %></p>
		<p>name : <%= infoUser.getName() %></p>
		<p>birth : <%= infoUser.getBirth() %></p>
		<p>hobby : <%= infoUser.getHobby() %></p>
		<p>info : <%= infoUser.getInfo() %></p>

	<a href="/Day6/Join/member_list.jsp"; >회원 목록으로 돌아가기</a> 

	</table>
</form>
</body>
</html>