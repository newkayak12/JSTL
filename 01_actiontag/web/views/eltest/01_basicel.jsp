<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "com.jspaction.model.vo.Person" %>
<%@ page import = "java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL표현식 활용하기 </title>
</head>
<body>
	<%
			String name = "유병승";
			int age = 19;
			request.setAttribute("name", name);
			session.setAttribute("age", age);
			
	%>
	
	
	<h3>EL 을 출력해보자</h3>
	<pre>
		EL은 기본적으로 내장 객체의 키 값으로 인식한다. 
		따라서 그냥 $`{name}이딴 식으로 쓰면 못 가져 온다.
		
	</pre>
	<h2> ${name} </h2>
	<h2> ${age}</h2>
	
	<h3>EL을 이용해서 연산처리하기</h3>
	<pre>
		EL표현식 내부에는 산술, 논리, 비교, 삼항 연산을 처리할 수 있다. 
	</pre>
	
	<%
			request.setAttribute("su",20);
			request.setAttribute("su2",30);
			request.setAttribute("userId", "admin");
			
		List<String> ar = Arrays.asList( new String[]{"1","2","3"});
			request.setAttribute("list",ar);
		
		Person p = new Person("양호준",27,"서울특별시");
			request.setAttribute("p",p);
			
		List<Person> persons = Arrays.asList(new Person[] { new Person("김상현",29,"구로구"), new Person("김예진", 26, "서울시 강남구")});
			request.setAttribute("ps" , persons);	
	%>
	
	
	<h4>산술 연산 처리  _ EL</h4>
	
	<p> su+su2: ${ su+su2 } </p>
	<p> su-su2: ${ su-su2 } </p>
	<p> su/su2: ${ Math.ceil(su/su2) } / div ${su div su2 }</p>
	<p> su*su2: ${ su*su2 } </p>
	<p> su%su2: ${ su%su2 } / mod ${su mod su2 }</p>
	
	<p> su&lt;su2: ${ su<su2 } </p>
	<p> su&gt;su2: ${ su>su2 } </p>
	
	<p> su&lt;su2: ${ su lt su2 } </p>
	<p> su&gt;su2: ${ su gt su2 } </p>
	
	<br>
	<h4>문자열 동등비교</h4>
	<p> "admin" == userId : ${"admin" == userId }</p>
	<p> "admin" == userId : (eq) ${"admin" eq userId }</p>
	<p> "admin" != userId :  ${"admin" != userId }</p>
	<p> "admin" != userId : (ne) ${"admin" ne userId }</p>
	
	<br>
	<h4>null비교</h4>
	<p> list == null : ${list == null }</p>
	<p> list != null : ${list != null }</p>
	<p> list == null : (empty) ${empty list }</p>
	<p> list != null : (not empty) ${not empty list }</p>
	
	
	<p> age >19 && userId= "admin" : ${age>19 && userId == "admin" }</p>
	<p> age >19 && userId= "admin" : ( lt, and, eq ) ${age lt 19 and userId eq "admin" }</p>
	
	<p> age >19 || userId= "admin" : ${age>19 || userId == "admin" }</p>
	<p> age >19 && userId= "admin" : ( lt, or, eq ) ${age lt 19 or userId eq "admin" }</p>
	
	<p> 삼항연산 : ${age>19? "성인입니다.":"미성년입니다." }</p>
	
	<p> 메소드 </p>
	<p>${list.size()}</p>
	
	
	<p>객체 내용 출력</p>
	<p>Person 정보 출력하기 : ${p.name}</p>
	<p style="color : red; font-weight : bolder;"> 단 조건이 있는데, 저 녀석은 getName()을 찾아간다. 그래서 규약을 준수해야한다. </p>
	
	<p>List 정보 출력하기 : ${list.get(0) }</p>
	<p>persons 출력 : ${ps }</p>
	<p>persons 출력 (name): ${ps.get(0).name }</p>
	<p>persons 출력 ( getName() ): ${ps.get(0).getName() }</p>
	
	<h1> 다시 한 번 말하지만 EL에서 사용하는 녀석들은 모두 내장 객체 안에 있는 녀석들이다. </h1>
	
	
	
	
	<br><br><br><br><hr>
	<h4>서블릿에서 저장한 객체 EL로 불러오기</h4>
	<a href = "<%=request.getContextPath() %>/basicel">서블릿 저장 데이터 출력</a>
	<!--  이걸 EL로 쓰면?? -->
	<br>
	<a href = "${ pageContext.request.contextPath }/basicel">서블릿 데이터 출력(EL로 작성)</a>
	
	<!--  
	 
	 	이번에는 파라미터로 보낸 값을 받아보자.
	 -->
	 
	
	 <h3>파라미터로 전송한 값 받아오기</h3>
	 
	 <fieldset>
		<legend>선택</legend>
	 <form action="02_parameter.jsp">
	 
	 	이름 : <input type = "text" name = "name"> <br>
	 	나이 : <input type = "text" name = "age">	 <br>
	 	취미 :
	 	<label> <input type = "checkbox" name = "hobby" value = "숨쉬기">숨쉬기 </label> 
	 	<label> <input type = "checkbox" name = "hobby" value = "걷기">걷기 </label> 
	 	<label> <input type = "checkbox" name = "hobby" value = "자기">자기 </label> <br> 
	 	
	 	<input type="submit" value = "전송">
	 </form>
	</fieldset>
	
	
	<h3>내장객체 (Cookie, header)에 있는 데이터 가져오기</h3>
	<a href = "${pageContext.request.contextPath }/extradata">데이터 가져오기</a>
	
	
	
	
	
	
	
</body>
</html> 