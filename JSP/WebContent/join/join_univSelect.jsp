<%-- 세션에 대학명 저장 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.net.URLDecoder"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String univ = URLDecoder.decode(request.getParameter("univ"), "UTF-8");

	session.setAttribute("univ", univ);
	session.setAttribute("univ_id", request.getParameter("univ_id"));
	response.sendRedirect("join.jsp");
%>
</body>
</html>