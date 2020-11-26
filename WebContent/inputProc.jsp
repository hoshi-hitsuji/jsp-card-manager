<!-- 페이지 디렉티브, 언어와 인코딩 설정 -->
<%@ page language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<!DOCTYPE html>
<!-- request parameter 값의 인코딩 설정 -->
<% request.setCharacterEncoding("utf-8"); %>
<html>
    <head>
    	<!-- html 페이지의 인코딩 설정 -->
        <meta charset="utf-8" />
        <title>명함</title>
        <!-- 스타일 적용 -->
        <link href="reset.css" rel="stylesheet" />
        <link href="inputProc.css" rel="stylesheet" />
    </head>
    <body>
        <section class="container">
        	<!-- 유저로부터 입력받은 값으로 명함 생성 -->
        	<img id="logo" src="res/logo.jpg" alt="kyungsung university logo" />
        	<div id="tm">KYUNGSUNG UNIVERSITY</div>
        	<div id="group8">
        		<div id="name">
        			<%= request.getParameter("name") %>
        		</div>
        		<div id="position">
        			<%= request.getParameter("position") %>
        		</div>
        	</div>
        	<div id="info">
        		<div class="info-item">
        			<span class="head">T</span>
        			<span>
        				<%= request.getParameter("tel") %>
        			</span>
        		</div>
        		<div class="info-item">
        			<span class="head">E</span>
        			<span>
        				<%= request.getParameter("email") %>
        			</span>
        		</div>
        		<div class="info-item">
        			<span class="head">A</span>
        			<span id="addr">
	        			<%= request.getParameter("addr") %> / <%= request.getParameter("addr2") %>
        			</span>
        		</div>
        	</div>
        </section>
    </body>
</html>
