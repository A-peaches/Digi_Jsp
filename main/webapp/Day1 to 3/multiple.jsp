<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>multiplication table</title>
<style>
	td, tr {
		border : 1px solid black;
		border-collapse: collapse;
	}
	
	table {
		border : 1px solid black; 
		width:70%; 
		text-align: center;
		margin:auto;
	}
</style>
</head>
<body>
<div style="text-align : center">
	<h3>♥ 구구단 ♥</h3>
	<hr>
	<table>
		<tr>
			<td style="background-color : #FAF4C0";></td>
			<% for(int i=1; i<10; i++){ %>
			<td style="background-color : #FAE0D4";><%= i %>단</td>
			<%} %>
		</tr>
		<% 
		   for(int j = 1; j<10; j++){ %>
		   <tr>
		   <td style="background-color : #FAF4C0"><%= j %></td>
		   	<% for(int k = 1; k<10; k++){ %>
		   	<td style="background-color : #F6F6F6"><%= k %> * <%= j %> = <%= j*k %></td>
		   	<% } %>
		   	</tr>
		   	<%} %>

	</table>
</div>
</body>
</html>