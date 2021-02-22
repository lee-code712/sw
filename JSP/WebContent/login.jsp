<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Login</title>

<style>
	body {
		background-color: #F0F0F0;
	}
	
	#main_login {
		margin: 0 auto;
		margin-top: 10%;
		width: 400px;
		text-align: center;
	}

	#main_login a {
		text-decoration: none; 
		color: #819ADE;
	}
	
	#main_login:hover {
		cursor: pointer;
	}
	
	#title_login {
		font-size: 48px;
		color: #819ADE;
		font-weight: bold;
	}
	
	#position_st {
		margin: 40px 0 20px 0;
		float: left;
		width: 90px;
		height: 25px;
		border: 1px solid #c4c4c4;
	}
		
	#id_st {
		margin-bottom: 10px;
		width: 400px;
		height: 50px;
		border: 1px solid #c4c4c4;
		border-radius: 10px;
	}
		
	#pwd_st {
		width: 400px;
		height: 50px;
		border: 1px solid #c4c4c4;
		border-radius: 10px;
	}
	
	#link {
		color: #2085E2;
	}	
	
	#login_btn {
		display: table-cell;
		margin: 40px 0 20px 0;
		font-family: 'Roboto';
		width: 400px;
		height: 50px;
		color: white;
		background: #819ADE;
		font-size: 14px;
		border: none;
		border-radius: 10px;
		box-shadow: 0px 5px 10px #c4c4c4;
	}
	
	#login_btn:focus {
		outline: 0;
	}
	
	#login_btn:hover {
		background: white;
		color: #819ADE;
		border: solid #819ADE 1px;
		cursor: pointer;
		box-shadow: 0 2px 4px rgba(0,79,255,0.6);
	}
	
	#account {
		margin: 10px 0 40px 0;
	}
	</style>

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
			<td id="title_login"><a href="mainPage.jsp">상담E*</a></td>
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
				<input type="text" name="id" id="id_st" value="  아이디" onFocus="this.value='';">
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="text" name="pwd" id="pwd_st" value="  패스워드" onFocus="value=''; type='password';">
			</td>
		</tr>
		
		<tr>
			<td><button id="login_btn">로그인</button></td>
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
