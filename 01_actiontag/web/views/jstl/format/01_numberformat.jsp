<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자 표현하기</title>
</head>
<body>
	<h1>기본숫자 표현하기</h1>
	
		<c:set var="numbertest" value="1234565792135468" />
		<c:set var="numbertest2" value="0.21385230000" />
		<c:set var="numbertest3" value="1" />
		<c:set var="numbertest4" value="1249.846" />
	
		<h3>기본 숫자 출력 : ${pageScope.numbertest }</h3>
		<h3>기본 숫자 출력 : <c:out value="${pageScope.numbertest }" /></h3>

		<br><hr><br>
	<h2> fmt:numberFormat태그를 이용해서 숫자 출력하기</h2>
		<h3><fmt:formatNumber value="${pageScope.numbertest }" /></h3>
		<h3><fmt:formatNumber value ="11284" /></h3>
		<pre>
				groupingUsed속성을 설정해서 ' , '를 구분함 
		</pre>
		<p>groupingUsed true</p>
		<h3><fmt:formatNumber value ="${numbertest }" groupingUsed="true"/></h3>
		<p>groupingUsed true</p>
		<h3><fmt:formatNumber value ="${numbertest }" groupingUsed="false"/></h3>
		
		<br><hr><br>
	<h2> 화폐 단위를 출력  </h2>
	
		<pre>
			type속성을 이용하여 설정 >> type="currency"
		</pre>
		
		<h3><fmt:formatNumber value ="${numbertest }"  /></h3>
		<h3><fmt:formatNumber value ="${numbertest }" type="currency" /></h3>
		
	<h3>현재 로케일 확인하기 : ${pageContext.request.locale }</h3>
	
	<br><hr><br>
	<h3> 통화 기준 바꿔서 출력하기</h3>
	
		<h3><fmt:formatNumber value ="${numbertest }" type="currency" currencySymbol="$"/></h3>
	
	<h3>퍼센트 표시하기</h3>
		<pre>
			type="percent"를 대입
			value="" 에는 0~1까지 가능 
		</pre>
		<h3><fmt:formatNumber value="${numbertest2 }" ></fmt:formatNumber></h3>
		<h3><fmt:formatNumber value="${numbertest2 }" type="percent"></fmt:formatNumber></h3>
	
	<br><hr><br>	
	<h3>패턴으로 숫자 표현하기</h3>
		<pre>
			pattern속성을 이용함 
			0 : pattern으로 지정한 자리에 수가 없으면 0
			# : pattern으로 지정한 자리에 수가 없으면 출력하지 않는다.(공란)
		</pre>
		
		<h3> <fmt:formatNumber value="1234.789456" pattern="###,###.0000000" /></h3>
		<h3> 0 : ${numbertest4 } >> <fmt:formatNumber value="${numbertest4 }" pattern="0,00.0" /></h3>
		<h3> 0 : ${numbertest4 } >> <fmt:formatNumber value="${numbertest4 }" pattern="###,###.####" /></h3>
	<br><hr><br>
	<h3>소수점 처리하기</h3>
		<pre>
			minFractionDigits :최소 소수점자리
			maxFractionDigits :최대 소수점자리
		</pre>
		
		<p> minFractionDigits를 5</p>
		<h3><fmt:formatNumber value="123.14" minFractionDigits="5" pattern="#,###.##"></fmt:formatNumber></h3>
		
		<p> minFractionDigits를 1</p>
		<h3><fmt:formatNumber value="123.14" minFractionDigits="1" pattern="#,###.##"></fmt:formatNumber></h3>
		
		<p> maxFractionDigits를 5</p>
		<h3><fmt:formatNumber value="123.145444" maxFractionDigits="5" pattern="#,###.##"></fmt:formatNumber></h3>
		
		<p> maxFractionDigits를 1</p>
		<h3><fmt:formatNumber value="123.14" maxFractionDigits="1" pattern="#,###.##"></fmt:formatNumber></h3>
		
	<br><hr><br>
	<h3>정수자리 처리하기</h3>
		<pre>
			minIntegerDigits : 최소 정수 자리수
			maxIntegerDigits : 최대 정수 자리수 
		</pre>
		
		
		
		<p> minIntegerDigits를 3</p>
		<h3><fmt:formatNumber value="23.14" minIntegerDigits="3" pattern="#,###.##"></fmt:formatNumber></h3>
		
		<p> maxIntegerDigits를 3</p>
		<h3><fmt:formatNumber value="123231.145444" maxIntegerDigits="3" pattern="#,###.##"></fmt:formatNumber></h3>
		
		
</body>
</html>