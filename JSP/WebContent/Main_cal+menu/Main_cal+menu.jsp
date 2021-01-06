<%-- 달력, 메뉴 존재하는 메인 페이지 --%>
<%-- 메인 페이지 바디 부분 구현 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<link type="text/css" rel="stylesheet" href="main_style.css"></link>
</head>

<body>
<header>
<div class="main" align="center">
<img src="image/main_logo_resize.png" id="main_logo" alt="main">
</div>
</header>

<nav>
	<ul>
		<li><a href="search.jsp">검&nbsp;&nbsp;&nbsp;&nbsp;색</a></li>
        <li>상담예약</li>
        <li><a href="../message/message.jsp">쪽&nbsp;&nbsp;&nbsp;&nbsp;지</a></li>
    </ul>
</nav>

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

<footer></footer>
</body>
</html>