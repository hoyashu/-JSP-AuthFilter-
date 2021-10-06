<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>

<%
String userId = (String)session.getAttribute("userId");

if(userId != null){
	session.invalidate();
%>	

	<%=userId%>님 안녕히가세요.
	<a href="<%=request.getContextPath() %>/loginForm.jsp">로그인</a>
	
<%	
}else{
	response.sendRedirect(request.getContextPath() + "/loginForm.jsp");
}
%>