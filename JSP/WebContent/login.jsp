<%-- 로그인 페이지 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#main_login {
	margin: 0px auto;
	width: 641px;
	height: 603px;
	border: 1.5px solid #c4c4c4;
	border-radius: 0.5em;
	text-align: center;
}
#title_login {
	font-size: 20px;
}
#login_form_table {
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
#pwd_st {
	width: 355px;
	height: 40px;
	border: 1.5px solid #c4c4c4;
	border-radius: 20px;
}
#login_button {
	background: url(image/login_button.png);
	background-repeat: no-repeat;
	width: 212px;
	height: 42px;
	border: 0;
}
#link_table {
	margin: 0px auto;
	width: 220px;
	height: 40px;
}
#link {
	color: gray;
}
</style>

<title>Login</title>
</head>

<body>
<%
	String ck = request.getParameter("ck");
	if(ck != null) {
		if(ck.equals("-1"))
			out.println("<script>alert('존재하지 않는 아이디입니다.');</script>");
		else if(ck.equals("-2"))
			out.println("<script>alert('패스워드가 틀렸습니다.');</script>");
	}
%>
<div id="main_login">
<p id="title_login"><b>로그인</b></p>

<br><br>

<form name="login_form" method="post" action="login_ck.jsp">
<table id="login_form_table">
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
		<td colspan="2"><input type="text" name="pwd" id="pwd_st" value="  패스워드" onFocus="value=''; type='password';"></td>
	</tr>
</table>

<br><br>

<input type="submit" id="login_button" alt="login button" value="">
</form>

<table id = "link_table">
	<tr>
		<td><a href="join.jsp" id="link">회원 가입</a></td>
		<td><a href="find_pw.jsp" id="link">패스워드 찾기</a></td>
	</tr>
</table>
</div>
</body>
</html>