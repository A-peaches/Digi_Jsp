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
		out.println("<h3>������ �������⿡ �����ϼ̽��ϴ�.</h3>");
		e.printStackTrace();
	}
	
%>



<%-- <%
	Connection conn = null;
	String sql = "INSERT INTO student2 (num,name) VALUES (?,?)";
	String student[] = {"��ٹ�","������","�쳻��"};
	
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
				out.println("<h3>"+i+"�� ���ڵ带 ����Ͽ����ϴ�.<h3>");
			}
		}
	} catch(Exception e) {
		out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.<h3>");
		e.printStackTrace();
	}
	
%> --%>

<%-- <%
	Connection conn = null;
	String sql = "INSERT INTO student2 (num, name) VALUES (6,'������')";
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
		conn = ds.getConnection();
		Statement stmt = conn.createStatement();
	
		int result = stmt.executeUpdate(sql);
		if(result!=0) {
		out.println("<h3>���ڵ尡 ��ϵǾ����ϴ�.</h3>");
		}
	} catch(Exception e) {
		out.println("<h3>���ڵ� ����� �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}
	
%> --%>