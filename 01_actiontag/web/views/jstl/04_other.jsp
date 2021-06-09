<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그 외 코어 태그</title>
</head>
<body>
	<h2>c:import</h2>
	 
	 	<pre>
	 		페이지에서 다른 페이지를 불러오는 것!
	 		
	 		include와 다른 점 >> 페이지를 불러와서 바로 출력하지 않는다. 
	 		(&lt;jsp:inlcude&gt;는 바로 출력)
	 		import는 변수로 받아서 내가 필요할 떄 쓸 수 있다.
	 		
	 			속성 c:import
	 					1. var : 페이지를 저장하는 변수 
	 					2. url : 불러올 페이지의 위치 
	 	</pre>
	 	
	 	<%-- <c:import var="header" url="../includeTest.jsp" ></c:import> --%>
	 	
	 	<%-- 
	 	<div>
	 		<c:out value = "${pageScope.header }" escapeXml="false"></c:out>
	 		${pageScope.header }
	 	</div>
	 	 --%>
	 	
	 	
	 	<%-- <c:import var="apple" url="https://www.apple.com/kr/" ></c:import> --%>
	 	
	 	<div>
	 		${pageScope.apple }
	 	</div>
	 	
	 	
 	<h2>c:url</h2>
	 	<pre>
	 	
	 	</pre>
	 	
	 	<c:url var="appl" value ="https://www.naver.com/search.naver">
	 		<c:param name = "query" value="김예진" />
	 	</c:url>
	 	<a href="${appl }">apple</a>	
	 	
	 	
	 	
	 	<h3>c:redirect태그 이용하기</h3>
	 	<pre>
	 		페이지를 변경해주는 태그
	 			&lt;c:redirect url="" &gt;
	 			
	 			&lt;/c:redirect  &gt;
	 	</pre>
	 	
	 	<%--
		 	 <c:redirect url="${appl }">
		 				<c:param name = "query" value="김예진" />
		 	</c:redirect> 
	 	--%> 
	 	
 	<h2>c:catch예외처리하기</h2>
 		<%
 			String test = null;
 			/* request.setAttribute("test", test); */
 		%>
		<c:catch var="e">
			<%=test.substring(2) %>
		</c:catch>			 	
		
		<c:out value="${e }"/>
</body>
</html>