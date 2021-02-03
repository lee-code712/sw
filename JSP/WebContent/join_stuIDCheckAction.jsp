<%-- 학번 중복 확인 로직, join_idCheck.java 호출 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsp.sw.Join_idCheck"%>
<% request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>check student id action</title>
</head>
<body>
<%
	String stuID = request.getParameter("stuID");
	
	int stuID_ck = Join_idCheck.check_ID(stuID, "0");
	session.setAttribute("ck", stuID_ck); // session에 저장했기 때문에 학번 미중복이 한 번이라도 확인되면 수정이 불가능한 문제...
	
	if (stuID_ck == 1) // 학번이 미중복이면 세션에 학번 값 저장
		session.setAttribute("join_stuID", stuID); 
	
	response.sendRedirect("join_stuIDCheck.jsp");
%>
</body>
</html>