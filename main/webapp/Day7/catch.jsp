<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="../CSS.css"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>catch</title>
</head>
<body>
<h3>&lt;c:catch&gt;</h3>
<c:catch var="errMsg">
	<%= 9/0 %>
</c:catch>
<p>error message : ${errMsg}</p>
</body>
</html>