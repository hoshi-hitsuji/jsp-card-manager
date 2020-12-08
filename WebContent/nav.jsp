<!-- 페이지 디렉티브, 언어와 인코딩 설정 -->
<%@ page language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<% String nav_id = request.getParameter("id"); %>
<nav class="nav glass">
	<ul>
		<li>
			<a href="inputForm.jsp">
				명함 추가
			</a>
		</li>
		<li>
			<a href="searchForm.jsp">
				명함 조회
			</a>
		</li>
		<li>
			<a href="searchProc.jsp">
				명함 목록
			</a>
		</li>
		<% if (nav_id != null) { %>
			<li>
				<a href="inputForm.jsp?id=<%=nav_id%>">
					명함 수정
				</a>
			</li>
			<li>
				<a href="deleteProc.jsp?id=<%=nav_id%>">
					명함 삭제
				</a>
			</li>
		<% }%>
	</ul>
</nav>