<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.UserBean" %>
<%
request.setCharacterEncoding("UTF-8");
%>   
<% 
	/* 	로그인 횟수 누적하는 쿠키~ */
	int loginCount = 0;
	Cookie[] cookies = request.getCookies();
	Cookie loginCountCookie = null;
	
	if(cookies != null) {
		for(Cookie cookie : cookies) {
			if("loginCount".equals(cookie.getName())) {
				loginCount = Integer.parseInt(cookie.getValue());
				loginCountCookie = cookie;
				break;
			}
		}
	}
	
	if(loginCountCookie == null) {
		loginCountCookie = new Cookie("loginCount","0");
	}
	
	loginCount++;
	loginCountCookie.setValue(Integer.toString(loginCount));
	loginCountCookie.setMaxAge(60 * 60 * 24 * 365); /* 1년정두? */
	response.addCookie(loginCountCookie); /* 응답에 쿠키 추가 */
	
	session.setAttribute("loginCount",loginCount);
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	UserBean userSession = UserBean.login(id,pw);
	session.setAttribute("user",userSession);
	
%>
<%
	UserBean user = (UserBean)session.getAttribute("user"); 
	boolean isLogin = (user != null);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
	function loginCheck() {
		var isLogin = <%= isLogin %>;
		if(isLogin) {
			alert("로그인 성공하였습니다!");
			window.location.href = "/Day6/Join/main.jsp";
		} else {
			alert("로그인 실패하였습니다.\n관리자에게 문의하십시오.\n연락처 : 1004-1004");
			window.location.href = "/Day6/Join/loginForm.jsp";
		}
	}
</script>
</head>
<body onload="loginCheck()">
</body>
</html>