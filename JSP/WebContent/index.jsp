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
	<div id="header">
		<div class="inner_header">
			<div class="logo_container">
				<h1><a>상담E*</a></h1>
			</div>
		
			<ul class="nav1">
				<li><a>공지사항</a></li>
				<li><a>상담예약</a></li>
				<li><a>쪽지함</a></li>
			</ul>
			
			<ul class="nav2">
				<li><a><img src="image/user.png">&nbsp;마이페이지</a></li>
				<li><button id="login">로그인</button></li>
			</ul>
		</div>
	</div>
	
	<div id="explain">
		<div id="ex1">교수-학생 간</div>
		<div id="ex2">상담일정 관리 서비스</div>
		<button id="reserve">예약하기&nbsp;→</button>
	</div>
	
	<div id="section">
		<div id="calendar">
			<div id="calendar_header">상담일정</div>
			<div id="calendar_body"></div>
		</div>
		
		<div id="announcement">
			<div id="announcement_header">공지사항<a>+전체보기</a></div>
			<div id="announcement_body"></div>
		</div>
		
		<div id="notice">
			<div id="notice_header">알림<a>+전체보기</a></div>
			<div id="notice_body"></div>
		</div>
	</div>
	
	<table id="footer"><tr><td>2021 all rights reserved.<p>Made with Lee You ri, Yoon Ra Kyung, Kim Hye Ran</td></tr></table>
</body>
</html>
