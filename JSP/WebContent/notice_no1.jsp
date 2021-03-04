<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsp.sw.*, java.util.ArrayList" %>
<%!
	ArrayList<Notice> no = Notice_list.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_no1</title>
</head>
<body>
<%
	out.println(no.get(0).getTitle() + "<br>");
	out.println(no.get(0).getContents());
	
	Notice_list.add_view("1");
	
%>
<br>
<a href="notice.jsp">돌아가기</a>
</body>
</html>