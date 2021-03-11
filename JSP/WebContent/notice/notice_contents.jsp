<%-- 공지사항별 페이지  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="jsp.sw.*, java.util.ArrayList" %>
<%!
	ArrayList<Notice> no = Notice_list.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_contents</title>
	<style>
		* {
			margin: 0;
			padding: 0;
			list-style: none;
			text-decoration: none;
		}
	
		header {
			width: 100%;
			height: 80px;
			margin: 0 auto;
			border-bottom: 2px solid #FFC200;
		}
		
		.inner_header {
			width: 1194px;
			height: 100%;
			margin: 0 auto;
		}
		
		.logo {
			display: table;
			float: left;
			height: 100%;
		}
	
		.logo a {
			display: table-cell;
			height: 100%;
			font-weight: bold;
			font-size: 24px;
			color: #FFC200;
			vertical-align: middle;
			cursor: pointer;
		}
	
		.gnb_left {
			float: left;
			height: 100%;
		}
	
		.gnb_left li {
			display: table;
			float: left;
			height: 100%;
			padding: 0px 30px;
		}
	
		.gnb_left li a {
			display: table-cell;
			height: 100%;
			font-size: 14px;
			color: #767676;
			vertical-align: middle;
		}
	
		.gnb_left li a:hover {
			color: #FFC200;
			cursor: pointer;
		}
	
		.gnb_left li:first-child {
			padding-left: 80px;
		}
	
		.gnb_right {
			float: right;
			height: 100%;
		}
	
		.gnb_right li {
			display: table;
			float: left;
			height: 100%;
			padding: 0px 20px;
		}
	
		.gnb_right li:last-child {
			padding-right: 0;
		}
	
		.gnb_right li a {
			display: table-cell;
			height: 100%;
			font-size: 14px;
			color: #767676;
			vertical-align: middle;
		}
	
		.gnb_right li a:hover {
			color: #FFC200;
			cursor: pointer;
		}
	
		#login {
			margin-top: 21px;
			padding: 9px 25px;
			border: 1px solid #FFC200;
			border-radius: 5px;
			color: white;
			background-color: #FFC200;
			cursor: pointer;
		}
	
		#login:hover {
			color: #FFC200;
			background-color: white;
			border: 1px solid #FFC200;
		}
		
		section {
			width: 100%;
			height: 80px;
			background-color: #FFFEFC;
		}
	
		#banner {
			display: table;
			width: 1194px;
			height: 100%;
			margin: 0 auto;
		}
	
		#banner div {
			display: table-cell;
			vertical-align: middle;
			font-size: 18px;
		}
		
		#contents {
			width: 1194px;
			margin: 0 auto;
			margin-top: 74px;
		}
		
		#contents_header {
			display: table-cell;
			width: 1194px;
			height: 40px;
			background-color: #FFC200;
			border: solid 1px #FFC200;
			border-radius: 5px 5px 0 0;
			vertical-align: middle;
		}
		
		#contents_title {
			float: left;
			padding-left: 10px;
			color: white;
		}
		
		#contents_date {
			float: right;
			padding-right: 10px;
		}
		
		#contents_body {
			width: 1172px;
			height: 534px;
			padding: 10px;
			border: 1px solid #C4C4C4;
			border-radius: 0 0 5px 5px;
		}
		
		#contents_btn {
			display: table-cell;
			margin: 40px 533px 0 533px;
			padding: 9px 40px;
			border: 1px solid #FFC200;
			border-radius: 5px;
			color: white;
			background-color: #FFC200;
			cursor: pointer;
		}
	
		#contents_btn:hover {
			color: #FFC200;
			background-color: white;
			border: 1px solid #FFC200;
		}
		
		footer {
			width: 1920px;
			margin: 0 auto;
    		margin-top: 74px;
    		padding: 80px 0;
    		border-top: 1px solid #ddd;
    		font-size: 1.4rem;
    		background-color: #F9F9F9;
    		text-align: center;
		}
</style>
</head>
<body>
	<header>
		<div class="inner_header">
			<div class="logo">
				<%
					String id = (String)session.getAttribute("id");
					if(id == null) {
						out.println("<a href=\"../index.jsp\">상담E</a>");
					}
					else {
						out.println("<a href=\"../index(2).jsp\">상담E</a>");
					}
				%>
			</div>
			
			<ul class="gnb_left">
				<li><a href="notice.jsp">공지사항</a></li>
				<li><a>상담예약</a></li>
				<li><a>쪽지함</a></li>
			</ul>
				
			<ul class="gnb_right">
				<li><a>마이페이지</a></li>
				<%
					if(id == null) {
						out.println("<li><button id=\"login\" onClick=\"location.href='login.jsp'\">로그인</button></li>");
					}
					else {
						out.println("<li>" + id + " 님</li>");
						out.println("<li><button id=\"login\" onClick=\"location.href='logout.jsp'; alert('로그아웃 되었습니다.');\">로그아웃</button></li>");
					}
				%>
			</ul>
		</div>
	</header>
	
	<section>
		<div id="banner">
			<div>공지사항</div>
		</div>
	</section>
	
	<form>
		<div id="contents">
			<%
				String param = request.getParameter("id");
				int index = Integer.parseInt(param) - 1;
				out.println("<div id=\"contents_header\">");
				out.println("<span id=\"contents_title\">" + no.get(index).getTitle() + "</span>");
				out.println("<span id=\"contents_date\">"+ no.get(index).getDate() + "</span>");
				out.println("</div>");
				out.println("<div id=\"contents_body\">"+ no.get(index).getContents() + "</div>");
				
				Notice_list.add_view(param);
		 	%>
		 	<a id="contents_btn" href="notice.jsp">목록</a>
		</div>
	</form>
	
	<footer>2021 all rights reserved.<p>Made with Lee You ri, Yoon Ra Kyung, Kim Hye Ran</footer>
</body>
</html>
