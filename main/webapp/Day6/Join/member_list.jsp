<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.UserBean" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>   
<!DOCTYPE html>
<html>
<head>
<style>
td {
	padding : 10px 10px 10px 10px;
}
</style>
<link rel="styleSheet" type="text/css" href="../../CSS.css"/>
<meta charset="UTF-8"">
<title>Member list</title>
</head>
<% 
  ArrayList<UserBean> member = UserBean.getMemberList(); 
  UserBean user = (UserBean)session.getAttribute("user"); 
	boolean isLogin = (user != null);
	boolean isAdmin = isLogin && user.isAdmin(); // 로그인 상태 확인 후 isAdmin 접근;
%>
 <script>
 	function deleteCheck() {
 		return confirm("정말로 삭제하시겠습니까?");
 	}
 	
	function Adminlogout() {
		alert("로그아웃이 완료되었습니다!");
		window.location.href = "/Day6/Join/logout.jsp";
	}
	
	function loginCheck() {
		var isLogin = <%= isLogin %>;
		var isAdmin = <%= isAdmin %>;
		if(!isLogin || !isAdmin) {
		  alert("관리자만 이용할 수 있습니다!");
		  window.location.href = "/Day6/Join/loginForm.jsp";
		} 
	}
	
	function infoMem(id) {
	    var form = document.createElement('form');
	    document.body.appendChild(form);
	    form.method = 'post';
	    form.action = 'member_info.jsp';

	    var input = document.createElement('input');
	    input.type = 'hidden';
	    input.name = 'id';
	    input.value = id;
	    form.appendChild(input);

	    form.submit();
	}
 </script>
<body onload="loginCheck()">
<h1>🪪 회원 목록</h1>

<hr>
<form method="post" action="deleteMember.jsp" onsubmit="deleteCheck()">
	<table border="1">
		<tr>
			<td>id</td>
			<td>email</td>
			<td>name</td>
			<td>회원 상세정보</td>
			<td>삭제</td>
		</tr>
		<%if (member != null) { %> 
		<% for (int i =0 ; i<member.size(); i++) { %>
			<tr>
			<td><%= member.get(i).getId() %></td>
			<td><%= member.get(i).getEmail() %></td>
			<td><%= member.get(i).getName() %></td>
			<input type="hidden" name="deleteId" value="<%=member.get(i).getId()%>"/>
			<td><input type="button" onclick="infoMem('<%=member.get(i).getId()%>')" value="조회"/></td>
			<td><input type="submit"  value="회원 삭제"/></td>
			</tr>
		<%} %>
		<% } else { %>
			<tr>
			<td colspan="8">회원이 존재하지 않습니다.</td>
			</tr>
		<% } %>
	</table>
		<br>
		<input type=button onclick="Adminlogout()" name="logout" value="Logout"/>
</form>
</body>
</html>