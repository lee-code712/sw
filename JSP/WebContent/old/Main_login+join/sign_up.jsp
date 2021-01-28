<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sign up</title>
<style>
div.main {
width:1200px;
margin:0 auto;
}
td {
padding:10px;
text-align:left;
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
<form name="sign_form" method="post">
<table>
<tr>
<td>
	인적사항<hr>
</td>
</tr>
<tr>
<td>
	학교명 <input type="text" name="school"> 
	<button type="button">검색</button>
</td>
<td>
	학과 <input type="text" name="major"> 
</td>
</tr>
<tr>
<td>
	이름 <input type="text" name="stu_id"> 
	<button type="button">실명인증</button>
</td>
</tr>
<tr>
<td>
	아이디 및 패스워드<hr>
</td>
</tr>
<tr>
<td>
	아이디 <input type="text" name="id" value="학교번호 +학번">
</td>
<td>
	패스워드 <input type="password" name="pw"><br>
</td>
</tr>
<tr>
<td></td>
<td>
	패스워드 확인 <input type="password"><br>
</td>
</tr>
</table>
<br>
<input type="submit" value="가입하기">
</form>
<hr/>
</div>
<div class="main" align="left">
푸터 위치
</div>
</body>
</html>