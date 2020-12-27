<%-- 메인 페이지 바디 부분 --%>

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
</style>
</head>

<body>
<div class="main" align="center">
<h3>로고 이미지</h3>
</div>
<div class="main">
<span>헤더 위치</span><span style="float:right;"><button>로그인</button></span>
</div>
<div class="main" align="center">
<hr/>
<table id="main_table">
<tr>
	<td>
		<jsp:include page="calendar.jsp" />
	</td>
	<td></td>
	<td>
		<jsp:include page="menu.jsp" />
	</td>
</tr>
</table>
<hr/>
</div>
<div class="main" align="left">
푸터 위치
</div>
</body>
</html>