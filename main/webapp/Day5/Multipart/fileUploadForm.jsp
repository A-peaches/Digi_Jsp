<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
	input {
		width : 100%;
		box-sizing : border-box;
	}
</style>
<meta charset="EUC-KR">
<title>FileUpload</title>
<link rel="styleSheet" type="text/css" href="../../CSS.css">
</head>
<body>
<h3>���� ���ε�</h3><hr>
<form method="post" enctype="multipart/form-data" action="fileUpload.jsp">
	<table border="1">
		<tr>
			<td colspan="2">���� ���ε� ��</td>
		</tr>
		<tr>
			<td>�ø� ��� : </td>
			<td><input type="text" name="name"/></td>
		</tr>
		<tr>
			<td>���� : </td>
			<td><input type="text" name="subject"/></td>
		</tr>
		<tr>
			<td>���ϸ�1: </td>
			<td>
			<input type="file" name="fileName1"/>
			</td>
		</tr>
		<tr>
			<td>���ϸ�2: </td>
			<td>
			<input type="file" name="fileName2"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" name="send" value="����"/>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>