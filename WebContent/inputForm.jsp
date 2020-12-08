<!-- 페이지 디렉티브, 언어와 인코딩 설정 -->
<%@ page language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
    <head>
    	<!-- html 페이지의 인코딩 설정 -->
        <meta charset="utf-8" />
        <title>명함</title>
        <!-- 스타일 적용 -->
        <link href="reset.css" rel="stylesheet" />
        <link href="global.css" rel="stylesheet" />
        <link href="inputForm.css" rel="stylesheet" />
    </head>
    <body>
    	<!-- glassmorphism 을 적용한 스타일 -->
        <section class="container glass">
        	<!-- form 구문 사용, submit의 action 설정 -->
            <form class="form" method="post" action="inputProc.jsp">
                <h1 class="headline">
                    <img
                        src="res/icons/person.svg"
                        style="margin-right: 0.5em"
                    />
                    명함 정보를 입력해주세요
                </h1>
                <!-- 유저로부터 입력값 받음 -->
                <div class="item">
                    <div class="name">이름</div>
                    <input
                        class="value"
                        name="name"
                        type="text"
                        placeholder="이름"
                        required
                        minlength="2"
                    />
                </div>
                <div class="item">
                    <div class="name">직책</div>
                    <input
                        class="value"
                        name="position"
                        type="text"
                        placeholder="직책"
                        minLength="1"
                        required
                    />
                </div>
                <div class="item">
                    <div class="name">전화번호</div>
                    <input
                        class="value"
                        name="tel"
                        type="tel"
                        placeholder="전화번호"
                        pattern="[0-9\-]{3,}"
                        required
                    />
                </div>
                <div class="item">
                    <div class="name">이메일</div>
                    <input
                        class="value"
                        name="email"
                        type="email"
                        placeholder="이메일"
                        required
                    />
                </div>
                <div class="item">
                    <div class="name">주소</div>
                    <input
                        class="value"
                        name="addr"
                        type="text"
                        placeholder="주소"
                        required
                    />
                </div>
                <div class="item">
                    <div class="name">상세주소</div>
                    <input
                        class="value"
                        name="addr2"
                        type="text"
                        placeholder="상세주소"
                        required
                    />
                </div>
                <input type="submit" />
            </form>
        </section>
    </body>
</html>
