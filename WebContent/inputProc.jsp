<%@ page language="java"
	contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<!DOCTYPE html>
<% request.setCharacterEncoding("utf-8"); %>
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
            <div class="item">
                <div class="name">
        	        <%= request.getParameter("name") %>
                </div>
            </div>
            <div class="item">
                <div class="name">
        	        <%= request.getParameter("dept") %>
                </div>
            </div>
            <div class="item">
                <div class="name">
        	        <%= request.getParameter("num") %>
                </div>
            </div>
            <div class="item">
                <div class="name">
        	        <%= request.getParameter("tel") %>
                </div>
            </div>
            <div class="item">
                <div class="name">
        	        <%= request.getParameter("email") %>
                </div>
            </div>
            <div class="item">
                <div class="name">
        	        <%= request.getParameter("addr") %>
                </div>
            </div>
            <div class="item">
                <div class="name">
        	        <%= request.getParameter("addr2") %>
                </div>
            </div>
        </section>
    </body>
</html>
