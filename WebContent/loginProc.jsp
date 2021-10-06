<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%-- session ture로 하면 브라우저마다 세션을 생성한다.--%>

<%

	//1.아이디와 비밀번호를 구한다.
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String url = request.getParameter("url");
	//2.회원여부를 확인한다.
	boolean isMember = true;
	
	if(isMember){
		//세션을 생성한다.
		session.setAttribute("userId", id); 
		
		if(url == null){
			response.sendRedirect(request.getContextPath() + "/loginSuccess.jsp");
		}else{
			response.sendRedirect(request.getContextPath() + url);
		}
	}else{
		response.sendRedirect(request.getContextPath() + "/loginForm.jsp");
	}
%>