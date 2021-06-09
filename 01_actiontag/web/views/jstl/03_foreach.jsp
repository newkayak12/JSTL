<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ page import ="java.util.List" %>
<%@ page import ="java.util.Arrays" %>
<%@ page import ="com.jspaction.model.vo.Person" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문</title>
</head>
<body>
	<h3>반복문 : c:forEach 태그를 사용</h3>
		<pre>
			두 가지 사용법이 있는데,
				1. 기본 for 문으로 사용하기
				2. forEach문 처럼 사용 (배열이나 collection을 가지고 )
				//장점은 varstatus를 통해서 index나 counting수를 알 수 있음
				
					속성 : &lt;c:forEach&gt;
							1. begin : 초기값 (시작하는 값 int i = 0;) >> 기본 for
							2. end   : 마지막 값 (끝내는 값 i<10;)  >> 기본 for
							3. step  : 증감식 (초기값에서 step 만큼 끝내는 값으로 다가감 i++) >> 기본 for
							
							4. var   : 배열이나 collection에 있는 값을 순차적으로 보관하는 변수명 >>forEach >> for( int a :)
							5. items : 배열이나 collection 자체 >> forEach >>for( ```  : b(배열이나 컬렉션))>>EL 표현식으로 가져옴 
							
							6. varStatus: forEach가 자동으로 돌아갈 때, index에 대한 정보, 반복 수 (count), 시작 값, 마지막 값을 저장한 객체 
		</pre>


	<h4>기본 반복문 활용하기</h4>
	<h5>1~10까지 출력하기</h5>
		<c:forEach var="i" begin="1" end="10" step="1">
<%-- 			<c:if test="${i%2==0 }">
				<c:out value="<br>" escapeXml="false "></c:out>
			</c:if>
 --%>
 			<c:out value="${i }"></c:out>
		</c:forEach>
	
	
		<c:forEach var ="i" begin="1" end="6">
			<h${i }> ${i} </h${i }>
		</c:forEach>	

	<h4>배열이나 Collection을 c:forEach태그로 이용하기 </h4>
		<%
			request.setAttribute("name", new String[]{"유병승","양호준","곽승혁","김두호","김상현","김태희"});
			List<Person> list = Arrays.asList(new Person[] {new Person("yoo", 19, "siheung"), new Person("yejin", 26, "gangnam"), new Person("lee",27,"yongin"),  new Person("ha",27,"guro") });
			request.setAttribute("list", list);
			
		%>
		
		<ul>
			<c:forEach var = "n" items ="${requestScope.name }">
				<li><c:out value ="${n }"/> </li>
			</c:forEach>
		</ul>
		
		 <br><br><hr>
		 
		<table>
					<tr>
						<th>이름</th>
						<th>나이</th>
						<th>주소</th>
					</tr>
			 <c:if test="${not empty requestScope.list }"> 
				<c:forEach var="t" items="${requestScope.list }" varStatus="vs">
					<c:if test="${vs.count<3 }">
						<tr>
							<td><c:out value = "${t.name}"/></td>
							<td><c:out value = "${t.age}"/></td>
							<td><c:out value = "${t.addr}"/></td>
						</tr>
					</c:if>
				</c:forEach>
			 </c:if> 
		</table>
		
			<br><br><hr>
			
		<c:forEach var="t" items="${requestScope.list }" varStatus = "vs">
			
				인덱스 : ${vs.index }
				반복수 : ${vs.count }
				첫번째 값이니? : ${vs.first }
				마지막 값이니? : ${vs.last }
				<br>
				
					
		</c:forEach>
		
			<br><br><hr>
			
		<table>
			<c:forEach var = "p" items="${list }" varStatus ="vps">
				<c:if test="${vps.first }">
					<tr>
						<th>이름</th>
						<th>나이</th>
						<th>주소</th>
					</tr>
				</c:if>
				
					<tr>
						<td><c:out value ="${p.name }"></c:out></td>
						<td><c:out value ="${p.age }"></c:out></td>
						<td><c:out value ="${p.addr }"></c:out></td>
					</tr>
				<c:if test="${vps.last }">
					<tr>
						<td>
						 총 인원 수 : 
						</td>
						<td colspan="2">
							<c:out value="${vps.count }"></c:out>
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		
		
		
	<h3>파라미터로 받는 값 c:forEach문으로 출력하기 </h3>
	
		<c:forEach var = "h" items="${paramValues.hobby }">
		
			<c:out value="${h }"/> 
			
		
		</c:forEach>
	
	
	<h3> c:forTokens 활용하기 </h3>
	
		<pre>
			StringTokenizer와 비슷한 기능을 한다. 
			문자열을 특정 구분자로 분리하여 반복문으로 출력한다. 
			
				속성 >> c:forTokens
					1. var    : 값을 받는 변수
					2. delims : 분리 기준이 되는 문자
					3. items  : 분리할 문자열을 집어 넣는 곳  
					
		</pre>

		<c:set var = "hobby" value="코딩,등산,독서,쿵푸,낮잠" />
		<c:out value = "${hobby }" />
		
		<hr>
		<c:forTokens var ="z" items ="${pageScope.hobby }" delims="," >
		
			<c:out value ="${z }"></c:out><br>
			
		</c:forTokens>
		
</body>
</html>