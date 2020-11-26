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
        	<%= request.getParameter("name") %>
        </section>
    </body>
</html>
