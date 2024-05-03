<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% request.setCharacterEncoding("euc-kr"); %>
<title></title>
</head>
<body>
<%
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
	loginCountCookie.setMaxAge(60 * 60 * 24 * 365); //1년정두?
	response.addCookie(loginCountCookie); //응답에 쿠키 추가
	

	String id = request.getParameter("id"); 
	session.setAttribute("id", id );
	session.setAttribute("loginCount",loginCount);
	
	%>

	<% 
	//리다이렉트
	response.sendRedirect("cookieList.jsp");

	%>
</body>
</html>