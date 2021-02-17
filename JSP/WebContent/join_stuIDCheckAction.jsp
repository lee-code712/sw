<%-- 학번 중복 확인 로직, join_idCheck.java 호출 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsp.sw.*"%>
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
	String univ = (String)session.getAttribute("univ");
	
	int stuID_ck = Join_idCheck.check_ID(stuID, "0");
	session.setAttribute("ck", stuID_ck);
	
	if (stuID_ck == 1) { // 학번이 유효하면 아이디 생성 후 세션에 학번,대학 및 아이디 저장
		session.setAttribute("join_stuID", stuID); 
		session.setAttribute("univ", univ);
		
		String userID = Join_idMake.make_ID(stuID, "0", univ);
		session.setAttribute("userID", userID);
	}
	
	response.sendRedirect("join_stuIDCheck.jsp");
%>
</body>
</html>