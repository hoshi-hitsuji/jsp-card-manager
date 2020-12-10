<!-- 페이지 디렉티브, 언어와 인코딩 설정 -->
<%@ page language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="java.sql.*" %>
<!DOCTYPE html>
<%@ include file="consts.jsp" %>
<!-- request parameter 값의 인코딩 설정 -->
<%request.setCharacterEncoding("utf-8");%>
<html>
    <head>
    	<!-- html 페이지의 인코딩 설정 -->
        <meta charset="utf-8" />
        <title>명함</title>
        <!-- 스타일 적용 -->
        <link href="reset.css" rel="stylesheet" />
        <link href="global.css" rel="stylesheet" />
    </head>
    <body>
        <section class="container glass">
        	<table class="table">
        		<thead>
	        		<tr>
	        			<th style="width: 4em;">순번</th>
	        			<th style="width: 8em;">이름</th>
	        			<th>직책</th>
	        			<th>전화번호</th>
	        		</tr>
        		</thead>
        		<tbody>
<%
String name = request.getParameter("name");
String tel = request.getParameter("tel");

if (name == null) name = "";
if (tel == null) tel = "";

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
Boolean isSuccess = false;
 
try {
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWD);
	
	String sql = null;
	if (name == "" && tel == "") {
		// 전체 조회
		sql = "SELECT * FROM `basicjsp`.`member`;";

		pstmt = conn.prepareStatement(sql);
	}
	else if (tel == "") {
		// 이름만
		sql = "SELECT * FROM `basicjsp`.`member` WHERE `name` LIKE ?;";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%" + name + "%");
	}
	else if (name == "") {
		// tel만
		sql = "SELECT * FROM `basicjsp`.`member` WHERE `tel` LIKE ?;";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%" + tel + "%");
	}
	else {
		// 둘 다
		sql = "SELECT * FROM `basicjsp`.`member` WHERE `name` LIKE ? AND `tel` LIKE ?;";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "%" + name + "%");
		pstmt.setString(2, "%" + tel + "%");
	}
	rs = pstmt.executeQuery();

	while (rs.next()) {
		String row_id = rs.getString("id");
		String row_name = rs.getString("name");
		String row_position = rs.getString("position");
		String row_tel = rs.getString("tel");
%>
	<tr>

		<td style="text-align: right;">
			<a href="cardView.jsp?id=<%=row_id %>"><%= row_id %></a>
		</td>
		<td>
			<a href="cardView.jsp?id=<%=row_id %>"><%= row_name %></a>
		</td>
		<td>
			<a href="cardView.jsp?id=<%=row_id %>"><%= row_position %></a>
		</td>
		<td>
			<a href="cardView.jsp?id=<%=row_id %>"><%= row_tel %></a>
		</td>
	</tr>
<%
	}
	
	isSuccess = true;
} catch (Exception e) {
	e.printStackTrace();
	
	isSuccess = false;
} finally {
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
%>
				</tbody>
        	</table>
        </section>
    	<%@ include file="nav.jsp" %>
    </body>
</html>
