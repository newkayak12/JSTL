<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IF 계산 결과는?</title>
</head>
<body>

	<c:if test="${(param.su1+param.su2)>100 }">
			<h3>100 이상의 수</h3>	
	</c:if>
	
	<c:if test="${(param.su1>param.su2)}">
			<h3>${param.su1 }이 ${param.su2} 보다 크다. </h3>
	</c:if>



	 <c:if test="${param.color == 'red' }">
			<div  style="width:50px; height:50px; background-color:red;"></div>
	</c:if>
	<c:if test="${param.color == 'yellow' }">
			<div  style="width:50px; height:50px; background-color:yellow;"></div>
	</c:if>
	<c:if test="${param.color == 'green' }">
			<div  style="width:50px; height:50px; background-color:darkgreen;"></div>
	</c:if>

	 
	 <c:choose>
	 
	 	<c:when test="${param.color ==  'red'}">
	 		<div  style="width:50px; height:50px; background-color:red;"></div>
	 	</c:when>
	 	
	 	<c:when test="${param.color ==  'yellow'}">
	 		<div  style="width:50px; height:50px; background-color:yellow;"></div>
	 	</c:when>
	 	
	 	<c:when test="${param.color ==  'green'}">
	 		<div  style="width:50px; height:50px; background-color:green;"></div>
	 	</c:when>
	 	
	 </c:choose>
</body>
</html>