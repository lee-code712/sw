<%-- 자식 페이지 호출 전 세션에 든 값 삭제 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionRemove</title>
</head>
<body>
<%
	if (session.getAttribute("join_stuID") != null ) {
		session.removeAttribute("join_stuID");
	}

	if (session.getAttribute("ck") != null ) {
		session.removeAttribute("ck");
	}
	
	if (session.getAttribute("univ") != null){
		session.removeAttribute("univ");
	}
%>
<script>window.close();</script>
</body>
</html>