<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="el.Eltest" %>
<link rel="stylesheet" type="text/css" href="../CSS.css"/>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>forEach</title>
</head>
<body>
<%-- <jsp:useBean id="eltest" class="el.Eltest" scope="session" /> --%>
<h3>forEach Test2</h3><hr>
<%-- 	<p>❤️ 선택한 어피치 : ${param.sel} </p>
	<p>num1 값 : ${eltest.num1} </p>
	<p>num2 값 : ${eltest.num2} </p>
	<p>num1 + num2 : ${eltest.num1 + eltest.num2} </p>	 --%>
	<% Eltest eltest = (Eltest)session.getAttribute("eltest"); %>
	💚 num1 : <%=eltest.getNum1() %><br>
	💛 num2 : <%= eltest.getNum2() %><br>
	💜 num3 : <%= eltest.getNum1() + eltest.getNum2() %><br>
</form>
</body>
</html>