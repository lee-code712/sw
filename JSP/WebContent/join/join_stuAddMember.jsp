<%-- 회원 추가 로직, join.java 호출 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsp.sw.Join"%>
<% request.setCharacterEncoding("UTF-8"); %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 회원가입 성공 시 로그인 페이지로 이동
	String stuID = (String)session.getAttribute("join_stuID");
	String userID = (String)session.getAttribute("userID");
	String pw = request.getParameter("pw");
	String univ_id = (String)session.getAttribute("univ_id");
	
	int flag = Join.add_member("0", stuID, userID, pw, univ_id);

	if(flag == 0) { // 회원가입 실패
		out.println("<script>");
		out.println("alert('회원가입에 실패했습니다. 회원가입 페이지로 이동합니다.'); document.location.href=\"join.jsp\"");
		out.println("</script>");
	}
	else { // 회원가입 성공
		session.invalidate(); // 회원가입 성공 시 세션 해제
		
		out.println("<script>");
		out.println("alert('회원가입에 성공했습니다. 회원님의 아이디는 " + userID + "입니다.'); document.location.href=\"/JSP/login/login.jsp\";");
		out.println("</script>");
	}
%>
</body>
</html>