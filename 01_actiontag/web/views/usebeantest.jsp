<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>usebean</title>
</head>
<body>
	<h3>서블릿에서 보낸 객체 가져오기</h3>
	<pre>
	
			jsp:useBean 의 id에 request.setAttribute에서 사용한 키 값을 넣는다. 
			
			jsp:getProperty 의 property에 클래스틔 키 값, name 에는 request 에 넣은 키 값을 넣는다. 
	</pre>
	<jsp:useBean id="person" class="com.jspaction.model.vo.Person" scope="request" />
	
	이름 : <jsp:getProperty property="name" name="person"/>
	나이 : <jsp:getProperty property="age" name="person"/>
	주소 : <jsp:getProperty property="addr" name="person"/>
	
<hr><br>
	<h3>usebean으로 기본 생성된 객체에 데이터 넣기</h3>


<jsp:useBean id="p" class="com.jspaction.model.vo.Person" scope="request" />	
	<jsp:setProperty property="name" name="p" value="장희웅"/>
	<jsp:setProperty property="age" name="p" value="27"/>
	<jsp:setProperty property="addr" name="p" value="서울시"/>
	
	
	이름 : <jsp:getProperty property="name" name="p"/>
	나이 : <jsp:getProperty property="age" name="p"/>
	주소 : <jsp:getProperty property="addr" name="p"/>

	<hr><br>
	<h3>파라미터로 보낸 값을 usebean객체에 바로 대입하기 </h3>
	<jsp:useBean id="p1" class = "com.jspaction.model.vo.Person"/>
	
	<jsp:setProperty property="name" name="p1" param="name" />
	<jsp:setProperty property="age" name="p1" param="age" />
	<jsp:setProperty property="addr" name="p1" param="addr" />
	
	
	이름 : <jsp:getProperty property="name" name="p1"/>
	나이 : <jsp:getProperty property="age" name="p1"/>
	주소 : <jsp:getProperty property="addr" name="p1"/>
	
</body>
</html>