<!-- 페이지 디렉티브, 언어와 인코딩 설정 -->
<%@ page language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ include file="consts.jsp" %>
<!DOCTYPE html>
<!-- request parameter 값의 인코딩 설정 -->
<% request.setCharacterEncoding("utf-8"); %>
<%
String id = request.getParameter("id");
Card card = new Card(id);
%>
<html>
    <head>
    	<!-- html 페이지의 인코딩 설정 -->
        <meta charset="utf-8" />
        <title>명함</title>
        <!-- 스타일 적용 -->
        <link href="reset.css" rel="stylesheet" />
        <link href="global.css" rel="stylesheet" />
        <link href="cardView.css" rel="stylesheet" />
    </head>
    <body>
        <section class="container">
        	<!-- 유저로부터 입력받은 값으로 명함 생성 -->
        	<!-- 자바빈 사용, getProperty로 값을 가져옴 -->
        	<img id="logo" src="res/logo.jpg" alt="kyungsung university logo" />
        	<div id="tm">KYUNGSUNG UNIVERSITY</div>
        	<div id="group8">
        		<div id="name">
        			<%= card.name %>
        		</div>
        		<div id="position">
        			<%= card.position %>
        		</div>
        	</div>
        	<div id="info">
        		<div class="info-item">
        			<span class="head">T</span>
        			<span>
        			<%= card.tel %>
        			</span>
        		</div>
        		<div class="info-item">
        			<span class="head">E</span>
        			<span>
        			<%= card.email %>
        			</span>
        		</div>
        		<div class="info-item">
        			<span class="head">A</span>
        			<span id="addr">
        				<%= card.addr %> / <%= card.addr2 %>
        			</span>
        		</div>
        	</div>
        </section>
    	<%@ include file="nav.jsp" %>
    </body>
</html>
