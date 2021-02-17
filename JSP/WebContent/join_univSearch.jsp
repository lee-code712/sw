<%-- 대학 검색 페이지 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsp.sw.*, java.sql.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대학 검색</title>
</head>

<body>
<form method="post" action="join_univSelect.jsp" name="univSelectfrom">
<%
	String input = request.getParameter("univ_name");
	input = "'%" + input + "%'";

	Connection conn = null;
	Statement st = null;       
	ResultSet rs = null;
	
	String sql = "select * from university where univ_name like " + input;
	
	try {
	    Connect_univ ct = new Connect_univ();
	    conn = ct.getConnection();
	          
	    st = conn.createStatement();
	    rs = st.executeQuery(sql);
	    
	    if(!rs.next()) {
	    	out.println("<script>alert('해당 대학에 대한 검색 정보가 존재하지 않습니다.'); document.location.href=\"join.jsp\"</script>");
	    }
	    else {
	    	out.println("<b>검색 결과</b> <p/>");
	    	
	    	String univ = rs.getString("univ_name");
	    	String univ_id = rs.getString("univ_id");
	    	out.print(univ + " ");
	    	out.print("<input type=\"button\" value=\"선택\" onclick=\"location.href='join_univSelect.jsp?univ=" + univ + "&univ_id=" + univ_id + "'\"/>");
	    	out.println("<br/>");
	    	
	    	while(rs.next()) {
		    	univ = rs.getString("univ_name");
		    	out.print(univ + " ");
		    	out.print("<input type=\"button\" value=\"선택\"/>");
		    	out.println("<br/>");
		    }
	    }
	} catch (SQLException e) {
	    e.printStackTrace();
	} finally {
		 DisConnect.close(conn, st, rs);
	}

%>
</form>
</body>
</html>