<!-- 페이지 디렉티브, 언어와 인코딩 설정 -->
<%@ page language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<!DOCTYPE html>
<!-- request parameter 값의 인코딩 설정 -->
<% request.setCharacterEncoding("utf-8"); %>
<!-- 자바빈 사용 설정 -->
<jsp:useBean id="regBean" class="jspCardManager.register.RegisterBean"/>
<jsp:setProperty name="regBean" property="*"/>
<html>
    <head>
    	<!-- html 페이지의 인코딩 설정 -->
        <meta charset="utf-8" />
        <title>명함</title>
        <!-- 스타일 적용 -->
        <link href="reset.css" rel="stylesheet" />
        <link href="global.css" rel="stylesheet" />
        <link href="cardProc.css" rel="stylesheet" />
    </head>
    <body>
        <section class="container">
        	<!-- 유저로부터 입력받은 값으로 명함 생성 -->
        	<!-- 자바빈 사용, getProperty로 값을 가져옴 -->
        	<img id="logo" src="res/logo.jpg" alt="kyungsung university logo" />
        	<div id="tm">KYUNGSUNG UNIVERSITY</div>
        	<div id="group8">
        		<div id="name">
        			<jsp:getProperty property="name" name="regBean"/>
        		</div>
        		<div id="position">
        			<jsp:getProperty property="position" name="regBean"/>
        		</div>
        	</div>
        	<div id="info">
        		<div class="info-item">
        			<span class="head">T</span>
        			<span>
        				<jsp:getProperty property="tel" name="regBean"/>
        			</span>
        		</div>
        		<div class="info-item">
        			<span class="head">E</span>
        			<span>
        				<jsp:getProperty property="email" name="regBean"/>
        			</span>
        		</div>
        		<div class="info-item">
        			<span class="head">A</span>
        			<span id="addr">
	        			<jsp:getProperty property="addr" name="regBean"/> / <jsp:getProperty property="addr2" name="regBean"/>
        			</span>
        		</div>
        	</div>
        </section>
    </body>
</html>
