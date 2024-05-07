<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.img {
		height : 100px;
		width : 100px
	}
</style>
<link rel="styleSheet" type="text/css" href="../../CSS.css">
<%@ page import="java.util.*, beans.MyCookie"%>
<%
		 List<MyCookie> cart =  (List<MyCookie>)session.getAttribute("cart");

		 if(cart == null) {
			cart = new ArrayList<MyCookie>();
			session.setAttribute("cart",cart);
		 }
		 
		 String[] menuImg = {"../../CSS/AmericanCookie.png","../../CSS/DoubleChocoCookie.png",
				 			 "../../CSS/OtmealCookie.png"};
   		 String[] menu = {"Ame", "Double", "Otmeal"};
     	 String[] menuNames = {"American Cookie", "Double Choco Cookie", "Oatmeal Cookie"};
	     int[] prices = {3000, 2800, 2600}; 
  		

  	        for(int i = 0; i < menu.length; i++){
  	            String paramName = menu[i] + "Cnt";
  	            String quantityStr = request.getParameter(paramName);
  	            if (quantityStr != null && !quantityStr.isEmpty()) {
  	                int quantity = Integer.parseInt(quantityStr);
  	                if (quantity > 0) {
  	                	boolean found = false;
  	                	
  	    				for(MyCookie cookie : cart) {
  	    					if(cookie.getName().equals(menuNames[i])){
  	   						cookie.setCnt(cookie.getCnt() + quantity);
  	   						found =true;
  	   						break;
  	    					}
  	    				}
  	    				
  	    				if(!found) {
  	    				
  	                    MyCookie cookie = new MyCookie(menuNames[i], prices[i], quantity);
  	                    cart.add(cookie);
  	    				}
  	    				
  	    				session.setAttribute("cart",cart);
  	                }
  	            }
  	        }
  	       
    %>
<meta charset="EUC-KR">
<title>cookieCart</title>
<style>
img {
	height: 20px;
	width: 20px;
}
</style>
<script>
function removeCookie(cookieName) {
    var form = document.createElement('form');
    document.body.appendChild(form);
    form.method = 'post';
    form.action = 'removeCookie.jsp';

    var input = document.createElement('input');
    input.type = 'hidden';
    input.name = 'cookieName';
    input.value = cookieName;
    form.appendChild(input);

    form.submit();
}
</script>
</head>
<%
	
%>
<body>
	<h1>CookieCart</h1>
	<hr>
	<jsp:include page="loginState.jsp"></jsp:include>
	<form method="post" action="check.jsp">
	<table border="1">
		<tr>
			<th>제품사진</th>
			<th>제품명</th>
			<th>개당 가격</th>
			<th>수량</th>
			<th>합계</th>
			<th>삭제</th>
		</tr>
		<% int sum = 0; %>
		<% for (MyCookie cookie : cart) { %>
		<tr>
		<%
   		 boolean found = false; // 초기 상태: 찾지 못함
   		 for (int j = 0; j < 3; j++) {
       	 if (cookie.getName().equals(menuNames[j])) {
           	 %>
            <td><img src="<%= menuImg[j] %>" class="img"/></td>
            <%
            found = true; // 항목을 찾았음
            break; // 루프 탈출
    		}
   		 }
    	if (!found) {
      	  %><td></td><% // 일치하는 항목이 없으면 빈 셀 출력
   			 }
			%>
			<td>&nbsp;<%= cookie.getName() %>&nbsp;</td>
			<td>&nbsp;<%= cookie.getPrice() %>원&nbsp;</td>
			<td>&nbsp;<%= cookie.getCnt() %>개&nbsp;</td>
			<td>&nbsp;<%= cookie.getPrice() * cookie.getCnt() %>원&nbsp;</td>
			<% sum += cookie.getPrice() * cookie.getCnt(); %>
			<td><button type="button" onclick="removeCookie('<%= cookie.getName() %>')">삭제</button></td>
		</tr>

		<% } %>
	</table>
		<p>총 가격 : <%=sum %>원</p>
	<input type=submit onclick="check()" value="결제"
		style="margin-top: 10px" />
	<br>
	<input type=button onclick="prev()" value="장바구니 추가담기"
		style="margin-top: 20px" />
	</form>
	<script>
		function prev() {
			window.location.href = "cookieList.jsp";
		}


	</script>
</body>
</html>