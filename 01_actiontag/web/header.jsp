<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	
	String title = request.getParameter("title");
%>
</head>
<body>

	<header>
		<h1><%=title %></h1>
		<ul>
			 <li>MAIN</li>
			 <li>GALLERY</li>
			 <li>NOTICE</li>
			 <li>BOARD</li>
		</ul>
	</header>
	
	