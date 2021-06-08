<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
  <jsp:include page = "/header.jsp">
  
  	<jsp:param value="메인" name="title" />
  
  </jsp:include>
  
  
  
<section>
		<h1> 여기가 본문 부분 </h1>
</section>

<!-- 

	jsp:include태그를 이용해서 불러오면 불러오는 페이지에 원하는 값을 줄 수 있음
	jsp:param이라는 태그를 이용해서 
		
		
		
	jsp:include     /jsp:include 사이에 jsp:param을 통해서
	
	
	이렇게 보내면 보낸데이트럴 request.getParameter()로 받을 수 있다. 
	
 -->