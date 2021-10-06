<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
    
    <% 
    String url = (String)request.getAttribute("url");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>session</title>
</head>
<body>
	<%-- 세션일때는 아래코드 --%>
	<form onsubmit="return false" id="form">
		<% if(url != null) { %><input type="hidden" name="url" value="<%=url %>" id="url"> <% } %>
		<label for="id">아이디 :</label><input type="text" name="id" id="id"><br>
		<label for="pwd">비밀번호 :</label><input type="password" name="pwd" id="pwd"><br>
		<button type="reset" id="resetBtn">취소</button>
		<button id="submitBtn">로그인</button>
	</form>
	
	<script>
		const form = document.getElementById("form");
		const id = document.getElementById("id");
		const pwd = document.getElementById("pwd");
		const submitBtn = document.getElementById("submitBtn");
		

		submitBtn.addEventListener("click", function () {
			if (id.value.trim() == "") {
				alert("아이디를 입력하세요.");
				id.focus();
				return false;
			}
			if(pwd.value.trim() == ""){
				alert("비밀번호를 입력하세요.");
				pwd.focus();
				return false;
			}

			form.action = "<%=request.getContextPath()%>/loginProc.jsp";
			form.mothod = "POST";
			form.submit();
		})
	</script>
</body>
</html>