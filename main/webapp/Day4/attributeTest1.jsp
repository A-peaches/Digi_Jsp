
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Application</title>
<link rel="stylesheet" type="text/css" href="../CSS.css">
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
	%>
	
	<% 
		if(name!=null && id!=null) {
			application.setAttribute("name",name);
			application.setAttribute("id",id);
		}
		
		name = (String)application.getAttribute("name");
		id = (String)application.getAttribute("id");
		
	%>
	
	<h3><%=name %>�� �ݰ����ϴ�. <br> <%=name %>���� ���̵�� <%=id %>�Դϴ�.</h3>
	<br>
	<hr>
	<br>
	<form name=form action=attributeTest2.jsp method=post>
	<table style="margin:auto; width:30%" border="1">
		<tr >
			<td colspan="2">Session ������ ������ �����</td>
		</tr>
		<tr>
			<td>e-mail �ּ�</td>
			<td><input type=text name="email"/></td>
		</tr>
		<tr>
			<td>�� �ּ�</td>
			<td><input type=text name="address"/></td>
		</tr>
		<tr>
			<td>��ȭ��ȣ</td>
			<td><input type=text name="tel"/></td>
		</tr>
		<tr >
			<td colspan="2"><input type=submit value="����"  /></td>
		</tr>
	</table>
</form>
</body>
</html>