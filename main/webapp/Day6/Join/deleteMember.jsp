<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="beans.UserBean" %>
<%
    String id = request.getParameter("deleteId");
 

	boolean result = UserBean.deleteMember(id);
    response.sendRedirect("member_list.jsp"); // 변경 사항을 반영하기 위해 페이지를 리디렉션
%>
