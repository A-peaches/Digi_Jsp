<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="beans.MyCookie" %>
<%
    String cookieName = request.getParameter("cookieName");
    List<MyCookie> cart = (List<MyCookie>) session.getAttribute("cart");
    if (cart != null && cookieName != null) {
        Iterator<MyCookie> it = cart.iterator();
        while (it.hasNext()) {
            MyCookie cookie = it.next();
            if (cookie.getName().equals(cookieName)) {
                it.remove(); // 안전하게 요소를 삭제
                break; // 요소를 찾고 삭제했다면 루프 종료
            }
        }
        session.setAttribute("cart", cart); // 세션 업데이트
    }
    response.sendRedirect("cookieCart.jsp"); // 변경 사항을 반영하기 위해 페이지를 리디렉션
%>
