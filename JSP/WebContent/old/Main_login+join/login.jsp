<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
div.main {
width:1200px;
margin:0 auto;
}
td {
padding:10px;
text-align:right;
}
</style>
</head>

<body>
<div class="main" align="center">
<h3>로고 이미지</h3>
</div>
<div class="main">
<span>헤더 위치</span><span style="float:right;"></span>
</div>
<div class="main" align="center">
<hr/>
<form  name="log_form" method="post">
<table>
<tr>
<td>
	<select name="position">
		<option selected>학부생</option>
		<option>대학원생</option>
		<option>교직원</option>
	</select>
</td>
</tr>
<tr>
<td>
	아이디 <input type="text" name="id"><br>
</td>
</tr>
<tr>
<td>
	비밀번호 <input type="password" name="pw"><br>
</td>
</tr>
<tr>
<td>
	<input type="submit" value="로그인">
	<button type="button" onClick="location.href='sign_up.jsp'">회원가입</button>
</td>
</tr>
</table>
</form>
<hr/>
</div>
<div class="main" align="left">
푸터 위치
</div>
</body>
</html>