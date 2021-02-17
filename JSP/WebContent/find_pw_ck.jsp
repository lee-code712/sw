<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsp.sw.Find_pw"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>find_pw_check</title>
</head>
<body>
<%
	// 계정 인증 시 이메일로 기존 비밀번호 전송
	String posit = request.getParameter("position");
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	
	String ck = Find_pw.check(posit, id, email);
	if(ck == "-1" || ck == "-2") {
		response.sendRedirect("find_pw.jsp?ck=" + ck);
		
	}
	else {
		Find_pw.send_pw(posit, id, email);
		response.sendRedirect("find_pw.jsp?ck=1");
	}
%>
</body>
</html>