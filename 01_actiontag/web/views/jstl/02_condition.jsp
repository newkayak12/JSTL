<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조건문</title>
</head>
<body>
	<h1>c:if 활용하기</h1>
		<pre> 
				자바의 if문과 동일하다. 
				스크립트릿에서  
				&lt;% if ( 조건 ) {  %&gt;
				
					 로직 
					 
				&lt;% } %&gt;
							
				이렇게 작성하던 것을 
				
				
				&lt; c:if test = "조건" &gt; 
				
						로직
				
				&lt;/c:if&gt;
				
				이렇게 사용한다.... > else if는?
				
				
				c:if 속성 
					1.test  : true/false 값이 나오는 연산, 변수 등을 대입
					2.var	: if문의 test 속성의 결과를 저장하는 변수 
					
					
			</pre>
		
		
			<c:set var="su" value="20" scope="page"></c:set>
			<c:set var="su2" value="30" scope="page"></c:set>
			
			<c:if test ="${pageScope.su<pageScope.su2 }">
				<h3>20이 30보다 작다.</h3>
			</c:if>
			
			<form action = "ifResult.jsp">
			
				<select name = "color">
					<option value = "red">빨</option>
					<option value = "yellow">노</option>
					<option value = "green">초</option>
					
				
				</select>
				<br>
						
			
				su1: <input type = "text" name = "su1">
				<br>
				su2: <input type = "text" name = "su2">
				<br>
				<input type="submit" value = "계산하기">
			
			</form>
			
		
	<h1> c:choose태그 이용하기 </h1>
		<pre> 
			switch문과 문법은 비슷하다. 
			
				작성하는 방법 : 
					&lt; c:choose &gt;
						
						&lt; c:when test="" &gt;
						
						&lt;/ c:when &gt;
						
						&lt; c:when test="" &gt;
						
						&lt;/ c:when &gt;
						
						&lt;c:otherwise&gt;
						
						&lt;/c:otherwise&gt;
						
					&lt;/ c:choose &gt;
			
		</pre>	
		
		
		<form action = "chooseTest.jsp">
		<fieldset>
			<legend>경품 뽑기</legend>
				숫자를 입력해주세요 <br>
				<input type="number" name = "su">
				<input type="submit" value="제출">
		</fieldset>
		</form>
	
</body>
</html>