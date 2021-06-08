<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	System.out.println("forwarding");
	request.setCharacterEncoding("UTF-8"); 
 %>   
<jsp:forward page = "usebeantest.jsp">

	<jsp:param name = "name" value = "김예진"/>
	<jsp:param name = "age" value = "26"/>
	<jsp:param name = "addr" value = "서울특별시"/>

</jsp:forward>

