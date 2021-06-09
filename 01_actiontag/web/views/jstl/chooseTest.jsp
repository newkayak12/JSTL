<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:choose>
		<c:when test="${param.su%5==0}">
			<h1> 맥북 프로 당첨!</h1>
		</c:when>
		
		<c:when test ="${param.su%5==4 }">
			<h1> 아이패드 프로 </h1>
		</c:when>
		
		<c:when test ="${param.su%5==3 }">
			<h1> 아이폰12proMax </h1>
		</c:when>
		
		<c:otherwise>
			<h1>꽝! 다음기회에</h1>
		</c:otherwise>
	
	</c:choose>

</body>
</html>