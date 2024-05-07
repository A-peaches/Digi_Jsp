<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>   
<!DOCTYPE html>
<html>
<head>
<link rel="styleSheet" type="text/css" href="../../CSS.css">
<meta charset="UTF-8">
<title>Login</title>
<style>
	.login {
		width : 230px;
		height : 30px;
		margin : 30px 10px 10px 10px;
	}
</style>
<script>
	function loginCheck() {
		var id = document.forms["loginForm"]["id"].value;
		var pw = document.forms["loginForm"]["pw"].value;
		if(id == "" || pw == "") {
			alert("ID와 PW를 모두 입력해주세요 !");
			return false;
		}
		return true;
	}
</script>
</head>

<body>
<h1>🔐 로그인</h1>
<hr>
<form name="loginForm" method="post" action="loginProcess.jsp" onsubmit="return loginCheck()">
&nbsp;<span> ID : </span> &nbsp;
<input type="text" name="id" placeholder="ID를 입력해주세요." class="login"/><br>
<span>PW :</span> &nbsp;
<input type="password" id="pw" name="pw" placeholder="PW를 입력해주세요." class="login"/><br>

<input type="submit" name="login" value="Login" class="login"/>
<p>회원가입이 안되어있으신가요? <a href="/Day6/Join/joinForm.jsp">회원가입</a></p>
</body>
</form>
</html>