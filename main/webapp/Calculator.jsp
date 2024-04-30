<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>calculator</title>
</head>
<body>
<div style="text-align : center;">
<form name=form1 action=CalcServlet method=post>
<h1>계산기</h1>
<HR>
<input type="number" name="num1" style="witdh:200px; height:30px"/>
<select id="operator" name="op" style="witdh:200px; height:30px">
	<option value="+">+</option>
	<option value="-">-</option>
	<option value="*">*</option>
	<option value="/">/</option>
</select>
<input type="number" name="num2" style="witdh:200px; height:30px"/>
<input type="submit" value="계산" name="B1" style="witdh:200px; height:30px"/>
<input type="reset" value="다시입력" name="B2" style="witdh:200px; height:30px"/>
</form>
</div>
</body>
</html>