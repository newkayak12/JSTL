<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 이요하기 위해서는 페이지 상단에 이용 jstl을 선언해야한다. -->
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"  %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL이용하기</title>
</head>
<body>
	<h3>set/out태그 활용하기</h3>
		<pre style="font-size: 16px">
			c:set > 변수를 선언하여 활용하는 태그
				c:set의 속성에는  
						1. var : 변수명
						2. value : 변수에 들어갈 값
						3. scope : 해당 변수가 어떤 scope에 속하는지를 명시하는 것 >> 생략하면 pageContet에 저장된다. 
				이 있다. 
				
				
				
			c:out > EL구문, 변수를 출력해주는 태그 * $ {  }  &lt;%= %&gt;와 동일함 
				c:out의 속성에는
						1. value : 출력할 값(EL표현식도 가능하고, 리터럴도 가능하다. )
						2. default : 변수를 가져왔을 때 그 값이 없는 경우 출력 될 기본 값을 설정한다. 
						3. escapeXml : 태그 형식으로 value를 작성했을 때, 태그로 해석할지 결정하는 속성(false가 해석 함, true가 안 함) 
		</pre>
	<br><hr>
	
	<h3> page에서 사용할 변수 선언하기 </h3>
		<p>&lt; c:set var = "name" value="유병승"/  &gt;</p>
	<br><hr>
	
		<c:set var = "name" value="유병승"/>
	<h3> c:set으로 선언한 변수는 EL표현식으로 출력할 수 있음</h3>
	<br><hr>
	
		${pageScope.name }
	<h3> c:out으로 출력가능 </h3>
		<c:out value="${pageScope.name}"></c:out>
	<br><hr>
	
	<h3> scope 실험하기 </h3>
		<c:set var="addr" value="경기도 시흥시" scope="request"/>
		<p> ${requestScope.addr }</p>
	<br><hr>
	
	<h3> 활용하기 _ 변수로 page context를 설정</h3>
		<c:set var = "absolutePath" value = "${pageContext.request.contextPath }" scope="application" ></c:set>
		<a href = "${pageContext.request.contextPath }"/test>페이지 연결</a>
		<a href = "${absolutePath }/test">페이지 연결 _ 변수로 써서</a>
		
	<h3>c:out</h3>	
		리터럴 : <c:out value = "안녕하세요"></c:out> <br>
		EL :<c:out  value="${pageScope.name}"></c:out>
		
		<h4>
			<c:out value = "될껄?"></c:out>
		</h4>
		
		<c:out value="<h3>이건 됨?</h3>" ></c:out>
		<c:out value="<h3>ESCAPEXML을 키면??</h3>" escapeXml="false"></c:out>
		
		
		<%
			String test = "<script> alert('옙') </script>";
			request.setAttribute("test",test);
		%>
	
	
		<c:set var = "script" value = "<script> alert('옙') </script>"></c:set>
		<%-- ${pageScope.script } --%>
		<c:out value="${requestScope.test }"></c:out> <br>
		
		
		<input type = "text" value = "<c:out value = "c:out으로 작성"></c:out>" readOnly>
</body>
</html>