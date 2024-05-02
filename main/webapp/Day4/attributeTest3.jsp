<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session</title>
<link rel="styleSheet" type="text/css" href="../CSS.css">
</head>
<body>
	<br>
	<% 
	String name = (String)application.getAttribute("name");
	String id = (String)application.getAttribute("id");
	%>
	<h3><%=name %>���� �Է��Ͻ� �����Դϴ�.</h3>
	<br>
	<table border="1">
		<tr>
			<td>�̸�</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>���̵�</td>
			<td><%=id %></td>
		</tr>
	</table>
	<br>
	<hr>
	<br>
	<% 
	String email = (String)session.getAttribute("email");
	String address = (String)session.getAttribute("address");
	String tel= (String)session.getAttribute("tel");
	%>
	<table border="1">
		<tr>
			<td colspan="2">Session ������ ����� �����</td>
		</tr>
	<% 
		Enumeration e = session.getAttributeNames();
		while(e.hasMoreElements()){
			String attributeName=(String)e.nextElement();
			String attributeValue=(String)session.getAttribute(attributeName);
		
		
	%>
		<tr>
			<td><%=attributeName %></td>
			<td><%=attributeValue %></td>
		</tr>
	<%
	}
	%>
	</table>
</body>
</html>