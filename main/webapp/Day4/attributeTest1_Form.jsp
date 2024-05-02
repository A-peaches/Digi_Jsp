<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>attributeTest1_Form</title>
<style>
	input {
		width : 250px;
	}
</style>
<link rel="styleSheet" type="text/css" href="../CSS.css">
</head>
<body>
<h3>영역과 속성 테스트</h3>
<hr>
<br>
<form name=form action=attributeTest1.jsp method=post>
	<table style="margin:auto; width:30%" border="1">
		<tr >
			<td colspan="2">Application 영역에 저장할 내용들</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type=text name="name"/></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type=text name="id"/></td>
		</tr>
		<tr >
			<td colspan="2"><input type=submit value="전송"  /></td>
		</tr>
	</table>
</form>
</body>
</html>