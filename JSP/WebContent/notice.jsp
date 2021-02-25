<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice.jsp</title>

<style>
  <link type="text/css" rel="stylesheet" href="css/frame.css"></link>
  <link type="text/css" rel="stylesheet" href="css/notice.css"></link>
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
		<span>
		<select id="search_nav">
			<option>전체</option>
			<option>제목</option>
			<option>내용</option>
			<option>작성자</option>
		</select>
		</span>
		<div id="search">
			<input type="text" value="검색어를 입력하세요." id="search_text">
			<img src="image/search.png" id="search_btn">
		</div>
	
		<div class="wrapper">
    		<div class="tableBox">
            	<table class="tableData">
                	<colgroup>
                    	<col width="8%">
                    	<col width="40%">
                    	<col width="20%">
                    	<col width="10%">
                    	<col width="8%">
                	</colgroup>
                	
                	<thead>
                    <tr>
                        <th class="stiky">번호</th>
                        <th class="stiky">제목</th>
                        <th class="stiky">작성일</th>
                        <th class="stiky">작성자</th>
                        <th class="stiky">조회</th>
                    </tr>
                	</thead>
                	
                	<tbody>
                    	<tr>
                        	<td>1</td>
                        	<td>상담 예약 절차</td>
                        	<td>2021.02.25</td>
                        	<td>상담E 관리자</td>
                        	<td>0</td>
                    	</tr>
                    
                    	<tr>
                        	<td>2</td>
                        	<td>상담 예약 취소 방법</td>
                        	<td>2021.02.25</td>
                        	<td>상담E 관리자</td>
                        	<td>0</td>
                    	</tr>
                    
                    	<tr>
                        	<td>3</td>
                        	<td>상담 예약 절차</td>
                        	<td>2021.02.25</td>
                        	<td>상담E 관리자</td>
                        	<td>0</td>
                    	</tr>
            		</tbody>
    			</table>
        	</div>
    	</div>
	</div>
	
  <table id="footer"><tr><td>2021 all rights reserved.<p>Made with Lee You ri, Yoon Ra Kyung, Kim Hye Ran</td></tr></table>
</body>
</html>
