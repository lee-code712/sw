<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsp.sw.*, java.util.ArrayList" %>
<%!
	ArrayList<Notice> no = Notice_list.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_no3</title>
</head>
<body>
<%
	out.println(no.get(2).getTitle() + "<br>");
	out.println(no.get(2).getContents());
	
	Notice_list.add_view("3");
	
%>
<br>
<a href="notice.jsp">돌아가기</a>
</body>
</html>