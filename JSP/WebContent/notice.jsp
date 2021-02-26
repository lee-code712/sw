<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/frame.css"></link>

<style>
	#banner {
	  margin: 0 auto;
		width: 100%;
		height: 70px;
		background: #EAF3FA;
	}
	
	#notice_bn {
		display: block;
		margin: 0 auto;
	}
	
	#notice_table {
		display: table;
		width: 1280px;
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
		margin-top: 80px;
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
		margin-top: 80px;
		margin-left: 750px;
		width: 134px;
		height: 38px;
		border: solid 1.5px #C4C4C4;
	}
  
	* {
		margin: 0;
		padding: 0;
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
    	width: 1280px;
    	border-top: 2px solid #819ADE;
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
    	border: 1px solid #819ADE;
    	font-weight: 600;
    	color: #819ADE;
	}

	.board_list_wrap .paging a.num.on {
    	background: green;
    	color: #fff;
	}
	
	#footer {
    position: absolute;
    top: 1250px;
    width: 100%;
    height: 210px;
    background-color: #F9F9F9;
    vertical-align: middle;
    text-align: center;
  }
</style>
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
				<li><a><img src="image/user.png" id="user_img">&nbsp;마이페이지</a></li>
				<li><button id="login">로그인</button></li>
			</ul>
		</div>
	</div>
	
	<img src="image/notice_bn.png" id="notice_bn">
	
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
   		<a href="#" class="bt">첫 페이지로 이동</a>
   		<a href="#" class="bt">이전 페이지로 이동</a>
   		<a href="#" class="num">1</a>
   		<a href="#" class="num">2</a>
   		<a href="#" class="num">3</a>
   		<a href="#" class="bt">다음 페이지</a>
  		<a href="#" class="bt">마지막 페이지</a>
	</div>
</div>

<table id="footer"><tr><td>2021 all rights reserved.<p>Made with Lee You ri, Yoon Ra Kyung, Kim Hye Ran</td></tr></table>
</body>
</html>
