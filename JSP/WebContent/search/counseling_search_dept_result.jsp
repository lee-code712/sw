<%-- 해당 대학 DB에 접속해 해당 학과에 속한 교수명 출력, Search_prof_by_dept.java 호출 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, jsp.sw.*"%>
<% request.setCharacterEncoding("UTF-8"); %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String d_name = request.getParameter("d_name");
	ArrayList<Professor> profs = null;
	
	if (session.getAttribute("prof_name") != null)
		session.removeAttribute("prof_name");
	
	if (d_name != null) {
		session.setAttribute(d_name, "dept_name");
		profs = Search_prof_by_dept.search(d_name);
		// profs = Search_prof_by_dept.search(d_name, univ_id); // 이건 검색 페이지에서 세션으로 대학 아이디 받아오는 부분 구현하면 사용
	}
	else 
		out.println("<script>alert('학과명은 공백일 수 없습니다.'); document.location.href=\"counseling_search(1).jsp\"</script>");
	
	if (profs != null) { 
		for (int i = 0; i < profs.size(); i++) {
			Professor p = profs.get(i);
			out.println(p.getName() + "<br/>");
			out.println(p.getDeptName() + "<p/>");
		}
	}
	else {
		// out.println("해당 학과에 해당하는 교수가 존재하지 않습니다.");
		out.println("<script>alert('해당 학과에 해당하는 교수가 존재하지 않습니다.'); document.location.href=\"counseling_search(1).jsp\"</script>");
	}
	
	// response.sendRedirect("counseling_search(1).jsp");
%>
</body>
</html>