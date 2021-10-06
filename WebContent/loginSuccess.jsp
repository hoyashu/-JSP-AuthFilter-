<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>



<% 
String userId = (String)session.getAttribute("userId");

if(userId != null){ 
%>
	<%=userId %>님 환영합니다:)
	<a href="<%=request.getContextPath() %>/logoutProc.jsp">로그아웃</a>
<% 
}else{
	response.sendRedirect(request.getContextPath() + "/loginForm.jsp");
}
%>
