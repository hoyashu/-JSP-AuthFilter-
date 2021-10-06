<%-- hello.jsp --%>

<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% 
	String userId = (String)session.getAttribute("userId");
%>


<h1>안녕, jsp !</h1>

<% if(userId != null){%>
	<a href="<%=request.getContextPath() %>/logoutProc.jsp">로그아웃</a>
<% } %>
