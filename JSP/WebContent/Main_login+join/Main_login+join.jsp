<%-- 로그인/회원가입 창만 있는 메인 페이지 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>

<script>
function zoomIn(event) {
    event.target.style.width = "85%";
    event.target.style.height = "35%";
    event.target.style.transition = "all 0.5s";
  }

function zoomOut(event) {
	event.target.style.width = "80%";
    event.target.style.height = "30%";
    event.target.style.transition = "all 0.5s";
  }
</script>

<style>
div {
width:1200px;
margin:0 auto;
}
#main_logo {
width:70%;
height:70%;
}
img.button {
height:30%;
}
td {
text-align:center;
width:270px;
}
p {
font-size:10pt;
color:gray;
}
</style>
</head>

<body>
<div align="center">
<img src="image/main_logo.png" id="main_logo" alt="main">
<table>
<tr>
<td><img src="image/login.png" class="button" alt="login" onmouseover="zoomIn(event)" onmouseleave="zoomOut(event)"></td>
<td><img src="image/join.png" class="button" alt="join" onmouseover="zoomIn(event)" onmouseleave="zoomOut(event)"></td>
</tr>
</table>

<hr/>
<p>- 상담-E를 이용하기 위해서는 회원가입이 필요합니다.</p>
<p>- 상담-E 서비스 지원 대학은 <a href="www.naver.com">이곳</a>에서 확인 가능합니다.</p>
<p>- 상담-E 문의: abc@dongduk.ac.kr</p>
</div>
</body>
</html>