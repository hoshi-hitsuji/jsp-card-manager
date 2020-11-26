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
        <link href="inputProc.css" rel="stylesheet" />
        <script src="index.js"></script>
    </head>
    <body>
        <section class="container">
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
