<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ �ѱ��</title>
<link rel="styleSheet" type="text/css" href="../CSS.css">
</head>
<body>
	<br><h3>�����͸� �Ѱܺ���!</h3><br><hr><br>
	
	<form name=form action="DataTest2.jsp" method="post">
		<table border="1">
			<tr>
				<td>id</td>
				<td><input type="text" name="id"/></td>
			</tr>
			<tr>
				<td>email</td>
				<td><input type="text" name="email"/></td>
			</tr>
			<tr>
				<td>tel</td>
				<td><input type="text" name="tel"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="�ѱ��"/></td>
			</tr>
		</table>
	</form>
</body>
</html>