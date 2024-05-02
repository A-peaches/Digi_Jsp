<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="styleSheet" type="text/css" href="../../CSS.css">
<meta charset="EUC-KR">
<title>beanTest</title>
</head>
<body>
<jsp:useBean id="beantest" class="test.BeanTest" scope="page"></jsp:useBean>
<br><h3>자바빈 사용 예제</h3><br><hr><br>
<%-- <% beantest.setName("cici"); %> --%>
<jsp:setProperty name="beantest" property="name" value="cici"/>
<%-- <%= beantest.getName() %> --%>
<jsp:getProperty name="beantest" property="name"/>
</body>
</html>