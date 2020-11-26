<%@ page language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale-1.0" />
        <title>명함</title>
        <link href="reset.css" rel="stylesheet" />
        <link href="style.css" rel="stylesheet" />
        <script src="index.js"></script>
    </head>
    <body>
        <section class="container glass">
            <form class="form" method="post" action="inputProc.jsp">
                <h1 class="headline">
                    <img
                        src="res/icons/person.svg"
                        style="margin-right: 0.5em"
                    />
                    명함 정보를 입력해주세요
                </h1>
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
                    <div class="name">학과</div>
                    <input
                        class="value"
                        name="dept"
                        type="text"
                        placeholder="학과"
                        pattern="[가-힣]+과"
                        required
                    />
                </div>
                <div class="item">
                    <div class="name">학번</div>
                    <input
                        class="value"
                        name="num"
                        type="text"
                        placeholder="학번"
                        pattern="[0-9\-]{5,}"
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
