<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
Calendar c=Calendar.getInstance();
int hour=c.get(Calendar.HOUR_OF_DAY);
int minute=c.get(Calendar.MINUTE);
int second=c.get(Calendar.SECOND);
%>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Servlet Test</title>
</head>
<body>
<h1>Now Time is :  <%=hour %>hour <%=minute %>minute <%=second %>second.</h1>
<% if(hour <= 12) { %>
<h3>오전입니다</h3>
<% } else { %>
<h3>오후입니다</h3>
<% } %>

</body>
</html>