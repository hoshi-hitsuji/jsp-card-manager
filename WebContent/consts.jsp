<%@ page import="java.sql.*" %>
<%!
String DB_URL = "jdbc:mysql://localhost:3306/basicjsp";
String DB_ID = "jspid";
String DB_PASSWD = "jsppass";

public class Card {
	String name = "";
	String position = "";
	String tel = "";
	String email = "";
	String addr = "";
	String addr2 = "";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Boolean isSuccess = false;
	public Card(String id) {
		String message = "";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWD);
			
			String sql = "SELECT * FROM `basicjsp`.`member` WHERE `id`=?;";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.first();
			
			name = rs.getString("name");
			position = rs.getString("position");
			tel = rs.getString("tel");
			email = rs.getString("email");
			addr = rs.getString("addr");
			addr2 = rs.getString("addr2");
			
			isSuccess = true;
		} catch (Exception e) {
			e.printStackTrace();
			isSuccess = false;
		} finally {
			close();
		}
	}
	public void close() {
		if (rs != null) {
			try { rs.close(); } catch (SQLException e) {}
		}
		if (pstmt != null) {
			try { pstmt.close(); } catch (SQLException e) {}
		}
		if (conn != null) {
			try { conn.close(); } catch (SQLException e) {}
		}
	}
}
%>