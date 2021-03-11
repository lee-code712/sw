<%-- 패스워드 찾기 페이지 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#main_find_pw {
	margin: 0px auto;
	width: 641px;
	height: 603px;
	border: 1.5px solid #c4c4c4;
	border-radius: 0.5em;
	text-align: center;
}
#title_find_pw {
	font-size: 20px;
}
#find_pw_form_table {
	margin: 0px auto;
	width: 549px;
	height: 196px;
}
#position_st {
	margin: 0px auto;
	width: 90px;
	height: 25px;
	border: 1.5px solid #c4c4c4;
}
#id_st {
	width: 355px;
	height: 40px;
	border: 1.5px solid #c4c4c4;
	border-radius: 20px;
}
#email_st {
	width: 355px;
	height: 40px;
	border: 1.5px solid #c4c4c4;
	border-radius: 20px;
}
#find_pw_button {
	background: url(image/login_button.png);
	background-repeat: no-repeat;
	width: 212px;
	height: 42px;
	border: 0;
}
#link_table {
	margin: 0px auto;
	width: 170px;
	height: 40px;
}
#link {
	color: gray;
}
</style>

<title>find_password</title>
</head>

<body>
<%
	String ck = request.getParameter("ck");
	if(ck != null) {
		if(ck.equals("-1"))
			out.println("<script>alert('존재하지 않는 아이디입니다.');</script>");
		else if(ck.equals("-2"))
			out.println("<script>alert('이메일이 틀렸습니다.');</script>");
		else
			out.println("<script>alert('등록된 메일로 패스워드를 전송했습니다.');</script>");
	}
%>
<div id="main_find_pw">
<p id="title_find_pw"><b>패스워드 찾기</b></p>

<br><br>

<form name="find_pw_form" method="post" action="find_pw_ck.jsp">
<table id="find_pw_form_table">
	<tr>
		<td>
		<select name="position" id="position_st">
			<option value="0" selected>학부생</option>
			<option value="1">교직원</option>
		</select>
		</td>
		<td width="250px"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="text" name="id" id="id_st" value="  아이디" onFocus="this.value='';"></td>
	</tr>
	<tr></tr>
	<tr>
		<td colspan="2"><input type="text" name="email" id="email_st" value="  학교 이메일" onFocus="this.value='';"></td>
	</tr>
</table>

<br><br>

<input type="submit" id="find_pw_button" alt="find_pw button" value="">
</form>

<table id = "link_table">
	<tr>
		<td><a href="login.jsp" id="link">로그인</a></td>
		<td><a href="../join/join.jsp" id="link">회원 가입</a></td>
	</tr>
</table>
</div>
</body>
</html>