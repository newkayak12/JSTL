<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL FN 이용</title>
</head>
<body>
	<c:set var="str" value="How are you? I am fine thank you and you?"/>
	<p> str : <c:out value="${str }"></c:out></p>
	<pre>
		1. uppercase : <c:out value="${fn:toUpperCase(str) }"/>
		
		2. lowercase : <c:out value="${fn:toLowerCase(str) }"/>
		
		3. replace : <c:out value="${fn:replace(str,'fine','tired') }" />
		
		4. contains : <c:out value="${fn:contains(str,'i')?'있다':'없다' }"/> (i 가 있니?)
		
		//HELLOMVC를 바꿀 수 있을까?? 시간 관계상??
	</pre>

</body>
</html>