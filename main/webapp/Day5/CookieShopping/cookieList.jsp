<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="styleSheet" type="text/css" href="../../CSS.css">
<meta charset="EUC-KR">

<title>CookieList</title>
<style>
	.img {
		height : 100px;
		width : 100px
	}
	
	td, tr {
		padding : 5px 5px 5px 5px;
	}
</style>

</head>	
<body>
	<h1>CookieList</h1>
	<hr>
	<jsp:include page="loginState.jsp"></jsp:include>
	<form name="List" method ="post" action="cookieCart.jsp">
	<table border="1">
		<tr>
			<td>��ǰ ����</td>
			<td>��ǰ��</td>
			<td>��ǰ����</td>
			<td>����</td>
		</tr>
		<script>
				// ���� ����
				function increase(cookie) {
				    let cnt = document.getElementById("quantity" + cookie);
				    let quantity = parseInt(cnt.value);
				    cnt.value = quantity + 1;
				}
				
				// ���� ����
				function decrease(cookie) {
				    let cnt = document.getElementById("quantity" + cookie);
				    let quantity = parseInt(cnt.value);
				    if (quantity > 1) {
				        cnt.value = quantity - 1;
				    }
				}
			</script>
		<tr>
			<td><img src="../../CSS/AmericanCookie.png" class="img"/></td>
			<td>AmericanCookie</td>
			<td>3,000��</td>
			<td>
				<input type="button" value="-" name="decreaseAme" onclick="decrease('Ame')"/>
				<input type="number" name="AmeCnt" id="quantityAme" value="0" style="width:30px"/>
				<input type="button" value="+" name="increaseAme" onclick="increase('Ame')"/>
			</td>
		</tr>
		<tr>
			<td><img src="../../CSS/DoubleChocoCookie.png" class="img"/></td>
			<td>DoubleChocoCookie</td>
			<td>2,800��</td>
			<td>
				<input type="button" value="-" name="decreaseDouble" onclick="decrease('Double')"/>
				<input type="number" name="DoubleCnt" id="quantityDouble" value="0" style="width:30px"/>
				<input type="button" value="+" name="increaseDouble" onclick="increase('Double')"/>
			</td>
		</tr>
		<tr>
			<td><img src="../../CSS/OtmealCookie.png" class="img"/></td>
			<td>OtmealCookie</td>
			<td>2,600��</td>
			<td>
				<input type="button" value="-" name="decreaseOtmeal" onclick="decrease('Otmeal')"/>
				<input type="number" name="OtmealCnt" id="quantityOtmeal" value="0" style="width:30px"/>
				<input type="button" value="+" name="increaseOtmeal" onclick="increase('Otmeal')"/>
			</td>
		</tr>
	</table>
		<input type=submit name=intoCart value="��ٱ��� ��� �� �̵�" style="margin-top:20px"/><br>
		<a href="cookieCart.jsp" class="button" style="margin-top:20px; display: inline-block; text-align: center; text-decoration: none;">��ٱ��� �̵�</a>


	</form>
</body>

</html>