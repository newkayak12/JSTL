<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>선택</legend>
	 <form action="${pageContext.request.contextPath }/views/jstl/03_foreach.jsp">
	 
	 	<label> <input type = "checkbox" name = "hobby" value = "숨쉬기">숨쉬기 </label> 
	 	<label> <input type = "checkbox" name = "hobby" value = "걷기">걷기 </label> 
	 	<label> <input type = "checkbox" name = "hobby" value = "자기">자기 </label> <br> 
	 	
	 	<input type="submit" value = "전송">
	 </form>
	</fieldset>
</body>
</html>