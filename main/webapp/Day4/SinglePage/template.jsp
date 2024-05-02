<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>SinglePage</title>
<link rel="styleSheet" type="text/css" href="../../CSS.css">
</head>
<body>

<% String pageLink = request.getParameter("PageLink");
	if(pageLink == null){
		pageLink="newItem.jsp";
	}
%>

<div style="margin:20px 20px 20px 20px;">
	<table border="1" style="maigin:auto; width:100%;">
		<tr>
			<td colspan="2" height="50"><jsp:include page="top.jsp"/></td>
		</tr>
		<tr>
			<td style="width:30%"><jsp:include page="left.jsp"/></td>
			<td style="width:70%" height="200"><jsp:include page='<%=pageLink %>'/></td>
		</tr>
		<tr>
			<td colspan="2" height="50"><jsp:include page="bottom.jsp"/></td>
		</tr>
	</table>
</div>
</body>
</html>