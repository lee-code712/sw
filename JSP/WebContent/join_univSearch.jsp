<%-- 대학 검색 페이지 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsp.sw.*, java.sql.*, java.net.URLEncoder"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
#main_join {
	margin: 0px auto;
	width: 641px;
	height: 603px;
	border: 1.5px solid #c4c4c4;
	border-radius: 0.5em;
	text-align: center;
}
#search_univ {
	width: 463px;
	height: 35px;
	border: 1.5px solid #c4c4c4;
}
#search_univ_table {
	margin: 0px auto;
	height: 40px;
}
#title_join {
	font-size: 20px;
}
#join_form_table {
	margin: 0px auto;
	width: 549px;
	height: 196px;
	border: 1.5px solid #c4c4c4;
	border-collapse: collapse;
}
.join_form_left_td {
	width: 189px;
	border: 1.5px solid #c4c4c4;
}
.join_form_input_td {
	border: 1.5px solid #c4c4c4;
	text-align: left;
}
.join_form_input {
	width: 355px;
	height: 40px;
	border: none;
}
#join_form_stuID {
	width: 220px;
	height: 40px;
	border: none;
}
#search_button_join {
	background: url(image/search_button.png);
	background-repeat: no-repeat;
	width: 40px;
	height: 40px;
	border: 0;
}
</style>

<title>대학 검색</title>
</head>

<body>
<div id="main_join">
<p id="title_join"><b>검색 결과</b></p>

<form method="post" action="join_univSearch.jsp" name="search_univ_form">
<table id="search_univ_table">
<tr>
	<td>
		<input type="text" id="search_univ" name="univ_name" maxlength="40" value="<%=request.getParameter("univ_name")%>" onfocus="this.value=''"/>
	</td>
	<td>
		<input type="submit" id="search_button_join" alt="search button" value="">
	</td>
</tr>
</table>
</form>

<p/>

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
	    	String univ = rs.getString("univ_name");
	    	String univ_encoded = URLEncoder.encode(URLEncoder.encode(univ, "UTF-8"), "UTF-8");
	    	String univ_id = rs.getString("univ_id");
	    	out.print(univ + " ");
	    	out.print("<input type=\"button\" value=\"선택\" onclick=\"location.href='join_univSelect.jsp?univ=" + univ_encoded + "&univ_id=" + univ_id + "'\"/>");
	    	out.println("<br/>");
	    	
	    	while(rs.next()) {
		    	univ = rs.getString("univ_name");
		    	univ_encoded = URLEncoder.encode(URLEncoder.encode(univ, "UTF-8"), "UTF-8");
		    	univ_id = rs.getString("univ_id");
		    	out.print(univ + " ");
		    	out.print("<input type=\"button\" value=\"선택\" onclick=\"location.href='join_univSelect.jsp?univ=" + univ_encoded + "&univ_id=" + univ_id + "'\"/>");
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
</div>
</body>
</html>