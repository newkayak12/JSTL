<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>표준액션태그 -> jsp:태그명</h2>
	<pre>
		외부의 페이지를 불러와 사용하는 태그
		&lg;%@ include %&gt; 태그와 비슷함.
		
		
		사용 방법
		&lg; jsp:include page = "" &gt; 페이지 명
		
		</pre>
		<a href="<%=request.getContextPath() %>/views/includeTest.jsp">include test</a>
	
<hr><br>


		<h3> jsp:usebean 이용하기</h3>
		<pre>
			vo객체를 jsp태그로 이용하는 것 
			param값, request 저장된 vo를 자동 매핑시켜준다. 
			
		</pre>
		<a href = "<%=request.getContextPath()%>/userbeantest"> usebean 활용하기</a>
		<form action = "<%=request.getContextPath()%>/views/usebeantest.jsp">
			이름 <input type="text" name = "name"><br>
			나이 <input type="text" name = "age"><br>
			주소 <input type="text" name = "addr"><br>
		
		
			<input type = "submit" value = "전송"/>
		</form>
		
		
<hr><br>
		<h3>jsp:forward활용하기</h3>
		<pre>
			jsp페이지를 다른 페이지로 이동시키는 태그이동 시킬 때 paramaerter값을 전송할 수 있다.  
			
		</pre>
		<a href = "<%=request.getContextPath() %>/views/forwardtest.jsp"> forward</a>
</body>
</html>