<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>dateFormat</title>
	</head>
	<body>
		<h3>날짜를 간편하게 표현해보자!</h3>
		
			<c:set var="today" value="<%=new java.util.Date() %>"/>
			<c:out value="${pageScope.today }"/>
	
			<pre>
				fmt:formatDate태그를 이용해서 날짜에 대해 시간, 일자 등을 원하는 방식대로 출력해보자
				type 속성을 이용해서 간편하게 시간, 날짜를 나눠서 출력할 수 있음
				
			</pre>
		
			<h4>기본 날짜 포맷 출력</h4>

	
				<pre>
		 			time : <fmt:formatDate value = "${today }" type="time"></fmt:formatDate>
		 			
					both : <fmt:formatDate value="${today }" type="both"></fmt:formatDate>
					
					date : <fmt:formatDate value="${today }" type="date"></fmt:formatDate>
				</pre>	
			
			
			<h4>dateStyle</h4>
				<pre>
					프리셋으로 날짜를 출력해보자
					default/ short/ long/ full 있다. 
					
						1. default : <fmt:formatDate value="${today }" dateStyle="default"/>
							1-1. default + both : <fmt:formatDate value="${today }" type="both" dateStyle="default"/>
						
						2. short : <fmt:formatDate value="${today }" dateStyle="short"/> [default]
						
						3. long : <fmt:formatDate value="${today }" dateStyle="long" />
						
						4. full :  <fmt:formatDate value="${today }" dateStyle="full" />
						
						>>fmt:formatDate의 기본값이 날짜
				</pre>
				
				
			<h4>timeStyle</h4>
				<pre>
					short/  medium/ long/ full
					
						1. short : <fmt:formatDate value="${today }" type="time" timeStyle="short"/>
						
						2. medium : <fmt:formatDate value="${today }" type="time"  timeStyle="medium"/> [default]

						3. long : <fmt:formatDate value="${today }" type="time"  timeStyle="long"/>
						
						4. full : <fmt:formatDate value="${today }" type="time"  timeStyle="full"/>
						
						
						
						> combine : <fmt:formatDate value="${today }" type = "both" dateStyle="short" timeStyle="short" />
						
				</pre>
			
			<h4>pattern으로 날짜 표현하기</h4>
			
				<pre>
					SimpleDateFormat에서 사용한 format으로 패턴을 지정한다.
					
						yyyy(년)-MM(월)-dd(일)  HH(시):mm(분):ss(초):sss(밀리세컨초) (E)(요일)
						pattern속성에 넣으면 됨
						
						<fmt:formatDate value="${today }" pattern="yyyy년 MM월 dd일 HH:mm:ss:sss (E)"/>
				</pre>
			
			
			<h4>timeZone을 바꿔서 보자</h4>
				<pre>
					LONDON : <fmt:timeZone value="GMT">
								<fmt:formatDate value="${today }" type="time" timeStyle="full"/>
							</fmt:timeZone>
							
					SEOUL : <fmt:timeZone value="GMT+9">
								<fmt:formatDate value="${today }" type="time" timeStyle="full"/>
							</fmt:timeZone>		
					
					
				
				</pre>
				
			<h4>locale 변경하기</h4>
				<pre>
					<fmt:setLocale value="fr_FR"></fmt:setLocale>
						<fmt:formatDate type="both" value="${today }" dateStyle="full" timeStyle="full"/>
						<fmt:formatNumber value="100000000" type="currency"/>
				</pre>
				
				
				
					
	</body>
</html>