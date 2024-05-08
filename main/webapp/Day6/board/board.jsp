<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="boardBean.Board" %>
<% request.setCharacterEncoding("UTF-8"); %>   
<head>
<meta charset="UTF-8">
<link rel="styleSheet" type="text/css" href="../../CSS.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<title>게시판</title>
<style>
	td {
		padding : 10px 10px 10px 10px;
	}
	
	div {
		margin: 10px 10px 10px 10px;
	}
	
	h3 {
		font-weight : bold;
	}
</style>
<script>
	function writeBtn() {
		window.location.href="/Day6/board/boardWrite.jsp";
	}
</script>
</head>
<body>
<br><h3>📝 게시판</h3>
<hr>
<div style="width : 80%; margin:auto;">
<table border="1">
	<thead>
	<div>
	<input type="button" onclick="writeBtn()" name="write" class="btn btn-Light" value="글작성"
	style="border: 1px solid gray;"/>
	</div>
	</thead>
	<tr>
		<td> 번호 </td>
		<td> 제목 </td>
		<td> 내용 </td>
		<td> 작성자 </td>
		<td> 작성일자 </td>
	</tr>
		<td> 1 </td>
		<td> 오늘은 비가 하루종일와용 </td>
		<td> 오늘은 전국에서 비가 하루종일 올 예정으로 날씨가 조금 쌀쌀합니다 옷 단디 챙기세여! </td>
		<td> 김피피 </td>
		<td>2024.05.07 </td>
	</tr>
</table>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</div>
</body>
</html>