<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
td.message_menu_content{
border:1px solid gray;
width:300px;
height:40px;
}
#message_menu_content_table {
text-align:center;
}
</style>
</head>

<body>
<table id="message_menu_content_table">
<%
String action = request.getParameter("action");

if (action == null || action.equals("0")) {
	out.println("<tr>");
	out.println("<td class=\"message_menu_content\">");
	out.println("컴퓨터학과 박동덕교수님");
	out.println("</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td class=\"message_menu_content\">");
	out.println("정보통계학과 임동덕교수님");
	out.println("</td>");
	out.println("</tr>");
}
else {
	out.println("<tr>");
	out.println("<td class=\"message_menu_content\">");
	out.println("컴퓨터학과 박동덕교수님");
	out.println(" :: ");
	out.println("메시지");
	out.println("</td>");
	out.println("</tr>");
}
response.sendRedirect("message.jsp");
%>
</table>
</body>
</html>