<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice.jsp</title>

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
	
		#notice_bn {
			display: block;
			margin: 0 auto;
		}	
	
		#notice_table {
			display: table;
			width: 1194px;
			margin: 0 auto;
			text-align: center;
		}	
	
		#search {
			height: 35px;
			width: 350px;
			border: solid 1.5px #C4C4C4;
			background: #ffffff;
			display: block;
			float: right;
			margin-top: 60px;
			margin-bottom: 30px;
		}
	
		#search_text {
			font-size: 14px;
			width: 250px;
			padding: 8px;
			border: 0px;
			outline: none;
			float: left;
		}	
	
		#search_btn {
			width: 34px;
			height: 34px;
			border: none;
			background: #819ADE;
			outline: none;
			color: #ffffff;
			cursor: pointer;
			float: right;
		}	
	
		#search_nav {
			margin-top: 60px;
			margin-left: 650px;
			width: 134px;
			height: 38px;
			border: solid 1.5px #C4C4C4;
		}	

		table {
    		border-collapse: collapse;
		}	

		caption {
    		display: none;
		}

		a {
   			text-decoration: none;
    		color: inherit;
		}

		.board_list_wrap {
    		padding: 10px;
		}

		.board_list {
    		width: 1194px;
    		border-top: 2px solid #FFC200;
    		margin: 0 auto;
		}

		.board_list tr {
    		border-bottom: 1px solid #ccc;
		}

		.board_list th,
		.board_list td {
    		padding: 10px;
    		font-size: 14px;
		}

		.board_list td {
    		text-align: center;
		}
	
		.board_list .tit {
    		text-align: left;
		}

		.board_list .tit:hover {
    		text-decoration: underline;
		}

		.board_list_wrap .paging {
    		margin-top: 50px;
    		text-align: center;
    		font-size: 0;
		}

		.board_list_wrap .paging a {
    		display: inline-block;
    		margin-left: 10px;
    		padding: 5px 10px;
    		border-radius: 100px;
    		font-size: 12px;
		}

		.board_list_wrap .paging a:first-child {
    		margin-left: 0;
		}

		.board_list_wrap .paging a.bt {
    		border: 1px solid #eee;
   			background: #eee;
		}	

		.board_list_wrap .paging a.num {
    		border: 1px solid #FFC200;
    		font-weight: 600;
    		color: #FFC200;
		}

		.board_list_wrap .paging a.num.on {
    		background: green;
    		color: #fff;
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
				<a>상담E</a>
			</div>
			
			<ul class="gnb_left">
				<li><a>공지사항</a></li>
				<li><a>상담예약</a></li>
				<li><a>쪽지함</a></li>
			</ul>
				
			<ul class="gnb_right">
				<li><a><img src="image/user.png">&nbsp;마이페이지</a></li>
				<li><button id="login" onClick="location.href='login.jsp'">로그인</button></li>
			</ul>
		</div>
	</header>
	
	<section>
		<div id="banner">
			<div>공지사항</div>
		</div>
	</section>
	
	<div id="notice_table">
		<select id="search_nav">
			<option>전체</option>
			<option>제목</option>
			<option>내용</option>
			<option>작성자</option>
		</select>
		
		<div id="search">
			<input type="text" value="검색어를 입력하세요." id="search_text">
			<img src="image/search.png" id="search_btn">
		</div>
	</div>
	
	<div class="board_list_wrap">
	<table class="board_list">
		<caption>게시판 목록</caption>
			<thead>
 			<tr>
    			<th>번호</th>
     			<th>제목</th>
     			<th>작성자</th>
    			<th>작성일</th>
    			<th>조회</th>
   			</tr>
			</thead>
			
			<tbody>
   			<tr>
      			<td>1</td>
      			<td class="tit">
         			<a href="#">상담 예약 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>2</td>
      			<td class="tit">
         			<a href="#">상담 예약 취소 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>3</td>
      			<td class="tit">
         			<a href="#">상담 예약 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>4</td>
      			<td class="tit">
         			<a href="#">상담 예약 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>5</td>
      			<td class="tit">
         			<a href="#">상담 예약 취소 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>6</td>
      			<td class="tit">
         			<a href="#">상담 예약 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>7</td>
      			<td class="tit">
         			<a href="#">상담 예약 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>8</td>
      			<td class="tit">
         			<a href="#">상담 예약 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>9</td>
      			<td class="tit">
         			<a href="#">상담 예약 취소 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>10</td>
      			<td class="tit">
         			<a href="#">상담 예약 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>11</td>
      			<td class="tit">
         			<a href="#">상담 예약 취소 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>12</td>
      			<td class="tit">
         			<a href="#">상담 예약 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
   			<tr>
      			<td>13</td>
      			<td class="tit">
         			<a href="#">상담 예약 취소 방법</a>
      			</td>
      			<td>상담E 관리자</td>
      			<td>2021-02-26</td>
      			<td>0</td>
   			</tr>
		</tbody>
	</table>

	<div class="paging">
   		<a href="#" class="bt">◀</a>
   		<a href="#" class="bt">◁</a>
   		<a href="#" class="num">1</a>
   		<a href="#" class="num">2</a>
   		<a href="#" class="num">3</a>
   		<a href="#" class="bt">▷</a>
  		<a href="#" class="bt">▶</a>
	</div>
</div>

<footer>2021 all rights reserved.<p>Made with Lee You ri, Yoon Ra Kyung, Kim Hye Ran</footer>
</body>
</html>
