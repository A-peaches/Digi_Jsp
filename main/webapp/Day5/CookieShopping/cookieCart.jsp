<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="styleSheet" type="text/css" href="../../CSS.css">
<%@ page import="java.util.*, beans.MyCookie" %>
  <%
  		session.removeAttribute("cart");
        List<MyCookie> cart =  cart = new ArrayList<MyCookie>();
        session.setAttribute("cart", cart);
     

        String[] menu = {"Ame", "Double", "Otmeal"};
        String[] menuNames = {"American Cookie", "Double Choco Cookie", "Oatmeal Cookie"};
        int[] prices = {3000, 2800, 2600}; // Assuming prices for demonstration

        for(int i = 0; i < menu.length; i++){
            String paramName = menu[i] + "Cnt";
            String quantityStr = request.getParameter(paramName);
            if (quantityStr != null && !quantityStr.isEmpty()) {
                int quantity = Integer.parseInt(quantityStr);
                if (quantity > 0) {
                    MyCookie cookie = new MyCookie(menuNames[i], prices[i], quantity);
                    cart.add(cookie);
                }
            }
        }
    %>
<meta charset="EUC-KR">
<title>cookieCart</title>
<style>
	img {
		height : 20px;
		width : 20px;
	}
</style>

</head>
<%
	
%>
<body>
	<h1>CookieCart</h1>
	<hr>
	<jsp:include page="loginState.jsp"></jsp:include>
	<table border="1">
        <tr>
            <th>��ǰ��</th>
            <th>����</th>
            <th>����</th>
        </tr>
        <% for (MyCookie cookie : cart) { %>
        <tr>
            <td><%= cookie.getName() %></td>
            <td><%= cookie.getPrice() %>��</td>
            <td><%= cookie.getCnt() %></td>
        </tr>
        <% } %>
    </table>
		<input type=button onclick="check()" value="����" style="margin-top:20px"/><br>
		<input type=button onclick="prev()" value="��ٱ��� �ٽô��" style="margin-top:20px"/>
		
	<script>
		function prev() {
			window.location.href= "cookieList.jsp";
			alert("��ٱ��Ͽ� �������� ���� ��ǰ�� �ݿ��˴ϴ�!");
		}
		
		function check() {
		 	alert("������ �Ϸ�Ǿ����ϴ�!");
		 	window.location.href= "cookieList.jsp";
		}
	</script>
</body>
</html>