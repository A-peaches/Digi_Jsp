<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ù��° �Ѱܹޱ�!</title>
<link rel="styleSheet" type="text/css" href="../CSS.css">
</head>
<body>
	<%
		String id = (String)request.getParameter("id");
		String email = (String)request.getParameter("email");
		String tel = (String)request.getParameter("tel");
	%>
	
	<br><h3>�Է��Ͻ� ������?</h3><br><hr><br>
	<h5>id : <%=id %><br></h5>
	<h5>email : <%=email %><br></h5>
	<h5>tel : <%=tel %><br></h5>
	<br>
	
	
	<br>

<%-- 	<jsp:include page="DataTest3.jsp">
		<jsp:param value="<%=id %>" name="id"/>
		<jsp:param value="<%=email %>" name="email"/>
		<jsp:param value="<%=tel %>" name="tel"/>
	</jsp:include>  --%>
	
<%-- 	<jsp:forward page="DataTest3.jsp">
		<jsp:param value="<%=id %>" name="id"/>
		<jsp:param value="<%=email %>" name="email"/>
		<jsp:param value="<%=tel %>" name="tel"/>
	</jsp:forward>
	 --%>

	<form method=post action="DataTest3.jsp">
		 <input type="hidden" name="id" value="<%= id%>">
   	 	 <input type="hidden" name="email" value="<%=email%>">
   	 	 <input type="hidden" name="tel" value="<%=tel%>">
		<input type="submit" value="������ ������ �ѱ��! " style="width:10%">
	</form>

	
	
</body>
</html>