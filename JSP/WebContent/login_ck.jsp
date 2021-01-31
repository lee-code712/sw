<%-- 로그인 확인 페이지 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsp.sw.Login"%>
<% request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_check</title>
</head>
<body>
<%
	// 로그인 성공 시 어디로 이동해야 할지 몰라서 일단 index페이지로 해놨음~!
	String posit = request.getParameter("position");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	int ck = Login.check_login(posit, id, pwd);
	if(ck == -1 || ck == -2) {
		response.sendRedirect("login.jsp?ck=" + ck);
		
	}
	else {
		session.setAttribute("id", id);
		response.sendRedirect("index.jsp");
	}
%>
</body>
</html>