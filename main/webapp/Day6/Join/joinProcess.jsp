<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.UserBean" %>
<%
request.setCharacterEncoding("UTF-8");
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<jsp:useBean id="userBean" class="beans.UserBean" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="userBean"></jsp:setProperty>
<% boolean result = userBean.joinUpdate(); %>
<script>
	function joinResult() {
		var result = <%= result ? "true" : "false" %>;
		if(result) {
			alert("회원가입을 성공하였습니다!");
			window.location.href = "/Day6/Join/loginForm.jsp";
		} else {
			alert("회원가입을 실패하였습니다.\n관리자에게 문의하십시오.\n연락처 : 1004-1004");
			window.location.href = "/Day6/Join/loginForm.jsp";
		}
	}
</script>
<body onload = "joinResult()">
</body>
</html>