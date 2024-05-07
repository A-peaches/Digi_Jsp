package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserBean {
	private String id;
	private String pw;
	private String email;
	private String name;
	private int year;
	private int month;
	private int day;
	private String hobby;
	private String info;
	private boolean isAdmin;
	
	public UserBean() { //회원가입 진행시 무조건 관리자 X 
		this.isAdmin = false;
	}
	
	public UserBean(String id, String pw, String email, String name, String birth,
			String hobby, String info, boolean isAdmin) { //회원가입 진행시 무조건 관리자 X 
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.name = name;
		birthStr(birth);
		this.hobby = hobby;
		this.info = info;
		this.isAdmin = isAdmin;
	}
	
	private void birthStr(String date) {
		String birth = date.replace("-", "");
		this.year = Integer.parseInt(birth.substring(0,4));
		this.month = Integer.parseInt(birth.substring(4,6));
		this.day = Integer.parseInt(birth.substring(6,8));
			
	}
		

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public String getHobby() {
		return this.hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String myInfo) {
		this.info = myInfo;
	}
	public boolean isAdmin() {
		return isAdmin;
	}
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	public String getBirth() {
		return this.year +"-"+this.month+"-"+this.day;
	}
	
	public boolean joinUpdate() {
		Connection conn = null;
		String sql = "insert into user Values "
				+ "(?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null;
		
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, this.id);
			pstmt.setString(2, this.pw);
			pstmt.setString(3, this.email);
			pstmt.setString(4, this.name);
			pstmt.setString(5, getBirth());
			pstmt.setString(6, this.hobby);
			pstmt.setString(7, this.info);
			pstmt.setBoolean(8, this.isAdmin);
			
			int result = pstmt.executeUpdate();
			
			System.out.println("회원가입 정상처리!");
			
		} catch(Exception e) {
			System.out.println("데이터 업데이트 실패!");
			e.printStackTrace();
			return false;
		} try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
		return true;
	}
	
	public static UserBean login(String id, String pw) {
		Connection conn = null;
		String sql = "select * from user where id=? AND pw=?";
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		UserBean user = null;
	
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);

			
			rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				user = new UserBean(rs.getString("id"),rs.getString("pw"),rs.getString("email")
						,rs.getString("name"),rs.getString("birth"),rs.getString("hobby"),
						rs.getString("info"),rs.getBoolean("isAdmin"));
			}
			
			System.out.println("로그인 정상처리!");
			
			return user;
			
		} catch(Exception e) {
			System.out.println("로그인 실패!");
			e.printStackTrace();
		} finally {
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	            if (conn != null) conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		}
		
		return null;
	}
	
	public static ArrayList<UserBean> getMemberList() {
		Connection conn = null;
		String sql = "select * from user where isAdmin=0";
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		UserBean user = null;
		ArrayList<UserBean> memberList = new ArrayList<UserBean>();
		
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				user = new UserBean(rs.getString("id"),rs.getString("pw"),rs.getString("email")
						,rs.getString("name"),rs.getString("birth"),rs.getString("hobby"),
						rs.getString("info"),rs.getBoolean("isAdmin"));
				memberList.add(user);
			}
			
			System.out.println("불러오기 정상처리!");
			
			return memberList;
			
		} catch(Exception e) {
			System.out.println("불러오기 실패!");
			e.printStackTrace();
		} finally {
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	            if (conn != null) conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		}
		
		return null;
	}
	
	public static boolean deleteMember(String id) {
		Connection conn = null;
		String sql = "delete from user where id=?";
		PreparedStatement pstmt = null;
		
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			int result = pstmt.executeUpdate();
			
			System.out.println("회원 삭제 정상처리!");
			
		} catch(Exception e) {
			System.out.println("회원 삭제 실패!");
			e.printStackTrace();
			return false;
		} try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
		return true;
	}
	
	public static UserBean detailUser(String id) {
		Connection conn = null;
		String sql = "select * from user where id=?";
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		UserBean user = null;
	
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			
			rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				user = new UserBean(rs.getString("id"),rs.getString("pw"),rs.getString("email")
						,rs.getString("name"),rs.getString("birth"),rs.getString("hobby"),
						rs.getString("info"),rs.getBoolean("isAdmin"));
			}
			
			System.out.println("회원 정보 불러오기 정상처리!");
			
			return user;
			
		} catch(Exception e) {
			System.out.println("회원 정보 불러오기 실패!");
			e.printStackTrace();
		} finally {
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	            if (conn != null) conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		}
		
		return null;
	}
}