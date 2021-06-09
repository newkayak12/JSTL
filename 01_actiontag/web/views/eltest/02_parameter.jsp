<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 데이터 받기</title>
</head>
<body>
	
	<h1>파라미터로 전송된 데이터 받기.</h1>
		<pre> 
			파라미터로 전송된 데이터는 param객체를 이용해서 출력한다. 
		</pre>
	
	
	<h4>${param.name }</h4>
	<h4>${param.age }</h4>
	<h4>  ${paramValues.hobby} </h4>
	<!-- EL이라... forEach로 돌리면... -->
</body>
</html>