<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h3> 쿠키 가지고 오기 </h3>
	<p> Cookie 객체를 통해서 데이터를 가져온다. </p>
	<h4> ${cookie }</h4>
	<h4> ${cookie.test.value }</h4>
	
	
	<h3>header값 가져오기</h3>
	<pre>
		header객체를 통해서 데이터를 가져옴
	</pre>
	
	<h4> ${header["User-Agent"] }</h4>
	<h4> ${header["Referer"] }</h4>
	<h4> ${header["Accept-Encoding"] }</h4>
</body>
</html>