<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Login</title>
	<link type="text/css" rel="stylesheet" href="css/login.css"></link>
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

<form name="login_form" method="post" action="login_ck.jsp">
	<table id="main_login">
		<tr>
			<td id="title_login"><a href="index.jsp">상담E</a></td>
		</tr>
		
		<tr>
			<td>
				<select name="position" id="position_st">
					<option value="0" selected>학부생</option>
					<option value="1">교직원</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="text" name="id" id="id_st" placeholder="  아이디" required>
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="password" name="pwd" id="pwd_st" placeholder="  패스워드" required>
			</td>
		</tr>
		
		<tr>
			<td><input type="submit" id="login_btn" alt="login button" value="로그인"></td>
		</tr>
		
		<tr>
			<td><div id="account">계정을 잊으셨나요? <a href="find_pw.jsp" id="link">아이디 찾기</a> 또는 <a href="find_pw.jsp" id="link">비밀번호 찾기</a></div></td>
		</tr>
		
		<tr>
			<td>아직 회원이 아니신가요? <a href="join.jsp" id="link">회원 가입</a></td>
		</tr>
	</table>
</form>
</body>
</html>
