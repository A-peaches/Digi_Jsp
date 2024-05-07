<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>


<%
	Connection conn = null;
	String sql = "SELECT * FROM student2";
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
		conn = ds.getConnection();
	
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			out.println("<h3>"+rs.getInt(1)+". "+rs.getString(2)+"</h3>");
		}
		rs.close();
		
	} catch(Exception e) {
		out.println("<h3>데이터 가져오기에 실패하셨습니다.</h3>");
		e.printStackTrace();
	}
	
%>



<%-- <%
	Connection conn = null;
	String sql = "INSERT INTO student2 (num,name) VALUES (?,?)";
	String student[] = {"김근미","유세앙","우내은"};
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
		conn = ds.getConnection();
		PreparedStatement stmt = conn.prepareStatement(sql);
		
		int k = 0;
		for(int i = 7; i<10; i++ ){
			stmt.setInt(1,i);
			stmt.setString(2,student[k++]);
			if(stmt.executeUpdate()!=0) {
				out.println("<h3>"+i+"번 레코드를 등록하였습니다.<h3>");
			}
		}
	} catch(Exception e) {
		out.println("<h3>레코드 등록에 실패하였습니다.<h3>");
		e.printStackTrace();
	}
	
%> --%>

<%-- <%
	Connection conn = null;
	String sql = "INSERT INTO student2 (num, name) VALUES (6,'김피피')";
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
		conn = ds.getConnection();
		Statement stmt = conn.createStatement();
	
		int result = stmt.executeUpdate(sql);
		if(result!=0) {
		out.println("<h3>레코드가 등록되었습니다.</h3>");
		}
	} catch(Exception e) {
		out.println("<h3>레코드 등록을 실패하였습니다.</h3>");
		e.printStackTrace();
	}
	
%> --%>