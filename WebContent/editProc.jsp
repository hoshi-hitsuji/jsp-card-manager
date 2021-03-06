<!-- 페이지 디렉티브, 언어와 인코딩 설정 -->
<%@ page language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="java.sql.*" %>
<!DOCTYPE html>
<%@ include file="consts.jsp" %>
<!-- request parameter 값의 인코딩 설정 -->
<%request.setCharacterEncoding("utf-8");%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String position = request.getParameter("position");
String tel = request.getParameter("tel");
String email = request.getParameter("email");
String addr = request.getParameter("addr");
String addr2 = request.getParameter("addr2");

Connection conn = null;
PreparedStatement pstmt = null;
String message = "";

try {
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWD);
	
	String sql = "UPDATE `basicjsp`.`member` SET `name`=?,`position`=?,`tel`=?,`email`=?,`addr`=?,`addr2`=? WHERE (`id`=?);";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, position);
	pstmt.setString(3, tel);
	pstmt.setString(4, email);
	pstmt.setString(5, addr);
	pstmt.setString(6, addr2);
	pstmt.setString(7, id);
	pstmt.executeUpdate();
	
	message = "success";
	
} catch (Exception e) {
	e.printStackTrace();
	message = "failed";
} finally {
	if (pstmt != null) {
		try { pstmt.close(); } catch (SQLException e) {}
	}
	if (conn != null) {
		try { conn.close(); } catch (SQLException e) {}
	}
}
%>
<html>
    <head>
    	<!-- html 페이지의 인코딩 설정 -->
        <meta charset="utf-8" />
        <title>명함</title>
        <!-- 스타일 적용 -->
        <link href="reset.css" rel="stylesheet" />
        <link href="global.css" rel="stylesheet" />
        <link href="inputProc.css" rel="stylesheet" />
    </head>
    <body>
        <section class="container">
        	<%= message %>
        </section>
    	<%@ include file="nav.jsp" %>
    </body>
</html>
