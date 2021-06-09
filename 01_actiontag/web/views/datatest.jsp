<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ page import = "java.util.List, com.jspaction.model.vo.Person" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h2>서블릿에서 보낸 리스트</h2>
	<h4>${lists }</h4>
	<h4>${p }</h4>
	
<%-- 
	<c:forEach var = "p" items="${lists }">
	</c:forEach>
 --%>
 
 <h2>session값</h2>
	 <h4>${name }</h4>
	 <h4><%=session.getAttribute("name") %></h4>
	 <h4> ${ sessionScope.name} </h4>
	 
	 <!--  
	 	el은  공유 객체인 request.session,context 등을 가져다가 쓴다!
	 	그럼... 이렇게 이름이 겹치면 어떻게 할까? EL은 이 객체들을 순회하면서 키 값을 찾아서 반환한다.
	 	순회 순서?
	 	
	 	pageContext/ request/ session/ application scope가 작은 범위에서 바깥으로 나가면서 순회를 한다.
	 	즉, 가장 작은 범위의 키 값에 딸린 값을 출력한다는 소리\
	 
	 -->
	 
 <h2>context값</h2>
 	<h4>${email }</h4>
 	
 	
</body>
</html>