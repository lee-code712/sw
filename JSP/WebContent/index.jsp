<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index(noLogin)</title>
	<link type="text/css" rel="stylesheet" href="css/frame.css"></link>
	<link type="text/css" rel="stylesheet" href="css/index.css"></link>
</head>

<body>
<%--헤더 --%>
<div id="logo"><a href="#"><img src="image/logo.png" width="109" height="50"></a></div>

<div id="list">
<ul>
   <li><a href="#">공지사항</a><li><%for(int i = 0; i < 6; i++){%>&nbsp;<%}%>
   <li><a href="#">상담예약</a><li><%for(int i = 0; i < 6; i++){%>&nbsp;<%}%>
   <li><a href="#">쪽지함</a><li>
</ul>
</div>

<div id="myPage"><a href="#"><img src="image/user.svg" width="30" height="30"></a></div>

<div id="login">
   <button id="login_btn">로그인</button>
</div>

<%--그림 --%>
<div id="counseling"><img src="image/counseling.png" width="528" height="338"></div>
<div id="explain2"></div>
<div id="explain3">상담-E</div>
<div id="explain4">교수-학생 간 상담 일정 관리 서비스</div>

<%--상담일정 --%>
<div id="schedule1"></div>
<table id="schedule2"><td>상담일정</td></table>

<%-- 공지사항 --%>
<hr id="hr3">
<div id="announcement">공지사항<%for(int i = 0; i < 42; i++){%>&nbsp;<%}%><a href="#" id="announcement2">+전체보기</a></div>

<%--알림 --%>
<hr id="hr4">
<div id="notice">알림<%for(int i = 0; i < 48; i++){%>&nbsp;<%}%><a href="#" id="notice2">+전체보기</a></div>

<%--footer --%>
<table id="footer"><td>2021 all rights reserved.<p>Made with Lee You ri, Yoon Ra Kyung, Kim Hye Ran</td></table>
</body>
</html>
