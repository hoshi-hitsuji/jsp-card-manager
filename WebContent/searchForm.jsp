<!-- 페이지 디렉티브, 언어와 인코딩 설정 -->
<%@ page language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
    <head>
    	<!-- html 페이지의 인코딩 설정 -->
        <meta charset="utf-8" />
        <title>명함 조회</title>
        <!-- 스타일 적용 -->
        <link href="reset.css" rel="stylesheet" />
        <link href="global.css" rel="stylesheet" />
        <link href="inputForm.css" rel="stylesheet" />
    </head>
	<body>
    	<!-- glassmorphism 을 적용한 스타일 -->
        <section class="container glass">
        	<!-- form 구문 사용, submit의 action 설정 -->
            <form class="form" method="post" action="searchProc.jsp">
                <h1 class="headline">
                    <img
                        src="res/icons/person.svg"
                        style="margin-right: 0.5em"
                    />
                    명함 조회
                </h1>
                <!-- 유저로부터 입력값 받음 -->
                <div class="item">
                    <div class="name">이름</div>
                    <input
                        class="value"
                        name="name"
                        type="text"
                        placeholder="이름"
                    />
                </div>
                <div class="item">
                    <div class="name">전화번호</div>
                    <input
                        class="value"
                        name="tel"
                        type="tel"
                        placeholder="전화번호"
                        pattern="[0-9\-]"
                    />
                </div>
                <input type="submit" />
            </form>
        </section>
    	<%@ include file="nav.jsp" %>
	</body>
</html>