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
<h3>������ �Ӽ� �׽�Ʈ</h3>
<hr>
<br>
<form name=form action=attributeTest1.jsp method=post>
	<table style="margin:auto; width:30%" border="1">
		<tr >
			<td colspan="2">Application ������ ������ �����</td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input type=text name="name"/></td>
		</tr>
		<tr>
			<td>���̵�</td>
			<td><input type=text name="id"/></td>
		</tr>
		<tr >
			<td colspan="2"><input type=submit value="����"  /></td>
		</tr>
	</table>
</form>
</body>
</html>