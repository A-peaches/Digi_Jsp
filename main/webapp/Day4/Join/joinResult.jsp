<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Result</title>
<link rel="styleSheet" type="text/css" href="../../CSS.css">
</head>
<jsp:useBean id="joinbean" class="beans.JoinBean" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="joinbean"></jsp:setProperty>
<%-- <%
	String[] habit = joinbean.getHabit();
	for(int i=0;i<habit.length;i++){
	if(habit[i] != null){
	out.write(habit[i]+"\n");
	}
	}
%> --%>
<body>
  <br><h2 align='center'> 회원 가입 정보 확인 </h2><br>
  <hr><br>
  <h3>ID : <jsp:getProperty name="joinbean" property="id"></jsp:getProperty></h3>
  <h3>PW : <jsp:getProperty name="joinbean" property="pw"></jsp:getProperty></h3>
  <h3>email : <jsp:getProperty name="joinbean" property="email"></jsp:getProperty></h3>
  <h3>name : <jsp:getProperty name="joinbean" property="name"></jsp:getProperty></h3>
  <h3>idNo : <jsp:getProperty name="joinbean" property="idNo"></jsp:getProperty></h3>
  <h3>birth : <jsp:getProperty name="joinbean" property="year"></jsp:getProperty>년
  			  <jsp:getProperty name="joinbean" property="month"></jsp:getProperty>월
  			  <jsp:getProperty name="joinbean" property="day"></jsp:getProperty>일
  </h3>
  <h3>habit :     
  <%
    String[] habits = joinbean.getHabit();
    if (habits != null) {
        for (String habit : habits) {
            out.println("<li>" + habit + "</li>");
        }
    } else {
        out.println("<li>선택된 취미가 없습니다.</li>");
    }
    %>
   </h3>
  <h3>myInfo : <jsp:getProperty name="joinbean" property="myInfo"></jsp:getProperty></h3>
	
</body>
</html>