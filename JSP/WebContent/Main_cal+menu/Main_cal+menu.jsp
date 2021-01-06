<%-- 달력, 메뉴 존재하는 메인 페이지 --%>
<%-- 메인 페이지 바디 부분 구현 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<style>
div.main {
width:1200px;
margin:0 auto;
}
#myPage {
width:300px;
height:300px;
border:1px solid gray;
}
#calendar {
width:900px;
height:500px;
}
#temp {
height:200px;
}
#main_logo {
width:20%;
height:20%;
}
</style>
</head>

<body>
<div class="main" align="center">
<img src="image/main_logo_resize.png" id="main_logo" alt="main">
</div>

<div class="main">
<span>헤더 위치</span><span style="float:right;">OO님 환영합니다!</span>
<p/>
</div>

<div class="main" align="center">
<table id="main_table">
<tr>
	<td id="myPage">
		<jsp:include page="myPage.jsp" />
	</td>
	<td></td>
	<td id="calendar" rowspan="2">
		<jsp:include page="calendar.jsp" />
	</td>
</tr>
<tr>
	<td id="temp">&nbsp;</td>
</tr>
</table>
<p/>
<hr/>
</div>

<div class="main" align="left">
푸터 위치
</div>
</body>
</html>