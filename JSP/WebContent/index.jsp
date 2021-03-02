<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

	<script type="text/javascript">
		var week = new Array('일', '월', '화', '수', '목', '금', '토');
    	var today = null;
    	var year = null;
    	var month = null;
    	var dayName = null;
    	var firstDay = null;
    	var lastDay = null;
    	var $tdDay = null;
    	var $tdSche = null;
    	var jsonData = null;
    
    	$(document).ready(function() {
        	drawCalendar();
        	initDate();
        	drawDays();
        	drawSche();
        	$("#movePrevMonth").on("click", function(){movePrevMonth();});
        	$("#moveNextMonth").on("click", function(){moveNextMonth();});
    	});
    
    	//Calendar 그리기
    	function drawCalendar(){
        	var setTableHTML = "";
        	setTableHTML+='<table class="calendar">';
        	setTableHTML+='<tr><th style="color: red">일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th style="color: blue">토</th></tr>';
        	
        	for(var i=0;i<6;i++){
            	setTableHTML+='<tr height="45">';
            	for(var j=0;j<7;j++){
                	setTableHTML+='<td style="text-overflow:ellipsis;overflow:hidden;white-space:nowrap">';
                	setTableHTML+='    <div class="cal-day"></div>';
                	setTableHTML+='    <div class="cal-schedule"></div>';
                	setTableHTML+='</td>';
            	}	
            	setTableHTML+='</tr>';
        	}
        	setTableHTML+='</table>';
        	$("#cal_tab").html(setTableHTML);
    	}
    
    	//날짜 초기화
    	function initDate(){
    		week = new Array('일', '월', '화', '수', '목', '금', '토');
        	$tdDay = $("td div.cal-day")
        	$tdSche = $("td div.cal-schedule")
        	dayCount = 0;
        	today = new Date();
        	year = today.getFullYear();
        	month = today.getMonth()+1;
        	date = today.getDate();
        	dayName = week[today.getDay()];
        	if(month < 10){month = "0"+month;}
        	firstDay = new Date(year,month-1,1);
        	lastDay = new Date(year,month,0);
    	}
    
    	//calendar 날짜표시
    	function drawDays(){
        	$("#cal_top_year").text(year);
        	$("#cal_top_month").text(month);
        	$("#cal_top_date").text(date);
        	$("#cal_top_dayName").text(dayName);
        	for(var i=firstDay.getDay();i<firstDay.getDay()+lastDay.getDate();i++){
        	    $tdDay.eq(i).text(++dayCount);
        	}
        	for(var i=0;i<42;i+=7){
        	    $tdDay.eq(i).css("color","red");
        	}
        	for(var i=6;i<42;i+=7){
        	    $tdDay.eq(i).css("color","blue");
        	}
    	}
    
    	//calendar 월 이동
    	function movePrevMonth(){
    	    month--;
    	    if(month<=0){
    	        month=12;
    	        year--;
    	    }
    	    if(month<10){
    	        month=String("0"+month);
    	    }
    	    getNewInfo();
    	    }
    	
    	function moveNextMonth(){
    	    month++;
    	    if(month>12){
    	        month=1;
    	        year++;
    	    }
    	    if(month<10){
    	        month=String("0"+month);
    	    }
    	    getNewInfo();
    	}
    
    	//정보갱신
    	function getNewInfo(){
    	    for(var i=0;i<42;i++){
    	        $tdDay.eq(i).text("");
    	        $tdSche.eq(i).text("");
    	    }
    	    dayCount=0;
    	    firstDay = new Date(year,month-1,1);
    	    lastDay = new Date(year,month,0);
    	    drawDays();
    	    drawSche();
    	}
    	
    	//데이터 등록
    	function setData(){
    	    jsonData = 
    	    {
    	        "2019":{
    	            "07":{
    	                "17":"제헌절"
    	            }
    	            ,"08":{
    	                "7":"칠석"
    	                ,"15":"광복절"
    	                ,"23":"처서"
        	        }
        	        ,"09":{
        	            "13":"추석"
        	            ,"23":"추분"
        	        }
        	    }
        	}
    	}	
    
    	//스케줄 그리기
    	function drawSche(){
        	setData();
        	var dateMatch = null;
        	for(var i=firstDay.getDay();i<firstDay.getDay()+lastDay.getDate();i++){
        	    var txt = "";
        	    txt =jsonData[year];
        	    if(txt){
        	        txt = jsonData[year][month];
        	        if(txt){
        	            txt = jsonData[year][month][i];
        	            dateMatch = firstDay.getDay() + i -1; 
        	            $tdSche.eq(dateMatch).text(txt);
        	        }
        	    }
        	}
    	}	
	</script>

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
	
		#banner {
			display: table-cell;
			width: 1920px;
			height: 430px;
			margin: 0 auto;
			font-size: 24px;
			text-align: center;
			vertical-align: middle;
			background-image: url('image/banner_img.jpg');
		}

		#banner a {
			font-size: 18px;
		}
		
		#banner a:hover {
			cursor: pointer;
			color: #FFC200;
		}
		
		section {
			display: table;
			width: 1194px;
			height: 390px;
			margin: 0 auto;
			margin-top: 70px;
		}
	
		#calendar {
			float: left;
		}
	
		#calendar_header {
			display: table-cell;
			width: 602px;
			height: 40px;
			padding-left: 10px;
			border: 1px solid #FFC200;
			border-radius: 5px 5px 0 0;
			color: white;
			background-color: #FFC200;
			vertical-align: middle;
		}
	
		#calendar_body {
			width: 612px;
			height: 354px;
			border: solid #C4C4C4 1px;
			border-radius: 0 0 5px 5px;
			background-color: white;
		}
	
		#announcement {
			display: table-cell;
			float: right;
			border: solid #C4C4C4 1px;
			border-radius: 5px;
		}
		
		#announcement_header {
			display: table-cell;
			width: 470px;
			height: 40px;
			padding-left: 10px;
			border-bottom: solid white 2px;
			border-radius: 5px 5px 0 0;
			color: black;
			background-color: #F9F9F9;
			vertical-align: middle;
		}
	
		#announcement_header a {
			float: right;
			padding-right: 10px;
			color: #FFC200;
		}
	
		#announcement_body {
			width: 480px;
			height: 130px;
			padding-top: 10px;
			border-radius: 0 0 5px 5px;
			background-color: #F9F9F9;
		}
		
		#announcement_body ul li {
    		margin-top: 15px;
    		margin-left: 20px;
    		margin-right: 20px;
    		padding-left: 7px;
    		font-size: 0;
    		background: url(image/dot.gif) no-repeat 0 7px /2px;
		}

		#announcement_body ul li:first-child {
    		margin-top: 0;
		}

		#announcement_body ul li a,
		#announcement_body ul li span {
    		display: inline-block;
    		color: black;
    		vertical-align: middle;
		}

		#announcement_body a {
    		width: 80%;
    		font-size: 14px;
		}

		#announcement_body span {
    		width: 20%;
    		font-size: 12px;
    		color: #777;
    		text-align: right;
		}

		#announcement_body ul li a:hover {
			color: #FC8396;
		}

		#more {
			display: table-cell;
			font-size: 12px;
			vertical-align: middle;
		}

		#more:hover {
			font-size: 12px;
			color: #819ADE;
			cursor: pointer;
		}
		
		#notice {
			display: table-cell;
			float: right;
			margin-top: 30px;
			border: solid #C4C4C4 1px;
			border-radius: 5px;
		}
	
		#notice_header {
			display: table-cell;
			width: 470px;
			height: 40px;
			padding-left: 10px;
			border-bottom: solid white 2px;
			border-radius: 5px 5px 0 0;
			background-color: #F9F9F9;
			color: black;
			vertical-align: middle;
		}
	
		#notice_header a {
			float: right;
			padding-right: 10px;
			color: #FFC200;
		}
	
		#notice_body {
			width: 480px;
			height: 130px;
			padding-top: 10px;
			border-radius: 0 0 5px 5px;
			background-color: #F9F9F9;
		}
		
		#notice_body ul li {
    		margin-top: 15px;
    		margin-left: 20px;
    		margin-right: 20px;
    		padding-left: 7px;
    		font-size: 0;
   			background: url(image/dot.gif) no-repeat 0 7px /2px;
		}

		#notice_body ul li:first-child {
    		margin-top: 0;
		}

		#notice_body ul li a,
		#notice_body ul li span {
    		display: inline-block;
    		color: black;
    		vertical-align: middle;
		}

		#notice_body a {
    		width: 80%;
    		font-size: 14px;
		}

		#notice_body span {
    		width: 20%;
    		font-size: 12px;
    		color: #777;
    		text-align: right;
		}

		#notice_body ul li a:hover {
			color: #FC8396;
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
		
		#calendar_body {
			width: 612px;
			height: 354px;
			border: solid #C4C4C4 1px;
			border-radius: 0 0 5px 5px;
			background-color: white;
		}
		
		.cal_top {
			display: table;
			float: left;
			width: 112px;
			height: 100%;
			margin-top: 20px;
    		text-align: center;
    		font-size: 18px;
		}
		
		#cal_tab {
			margin-top: 20px;
		}
		
		table.calendar{
    		display: inline-table;
    		text-align: left;
		}
	
		table.calendar th {
			text-align: center;
    		vertical-align: top;
    		width: 50px;
		}
	
		table.calendar td {
			width: 50px;
			border: 1px solid #FFC200;
			border-radius: 5px;
    		vertical-align: top;
		}
	
		#cal_top_date {
			margin-top: 20px;
			font-size: 36px;
		}
		
		.cal_tit {
			padding: 10px;
			color: #FC8396;
		}
		
		#cal_msg {
			width: 200px;
			height: 20px;
			margin: 84px 11px 0px 11px;
			padding: 40px 0px;
			border: 1px solid #C4C4C4;
			border-radius: 20px;
			background-color: #F9F9F9;
			font-size: 14px;
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
	
	<div id="banner">
		교수-학생 간<p> 
		상담일정 관리 서비스<p>
		<a>예약하기&nbsp;→</a>
	</div>
		
	<section>
		<div id="calendar">
			<div id="calendar_header">상담일정</div>
			<div id="calendar_body">
				<div class="cal_top">
        				<a href="#" id="movePrevMonth"><span id="prevMonth" class="cal_tit">◀</span></a>
        				<span id="cal_top_year"></span>.
        				<span id="cal_top_month"></span>
        				<a href="#" id="moveNextMonth"><span id="nextMonth" class="cal_tit">▶</span></a>
        				<div id="cal_top_date"></div>
        				<span id="cal_top_dayName"></span>요일
        				<div id="cal_msg">등록된 일정이 없습니다.</div>
    			</div>
    
    			<div id="cal_tab" class="cal"></div>
			
			</div>
		</div>
		
		<div id="announcement">
			<div id="announcement_header"><span style="color: #FFC200">◆ </span>공지사항<a id="more">+전체보기</a></div>
			<div id="announcement_body">
				<ul>
            		<li>
            			<a href="#">글 제목이 들어갑니다.</a>
            			<span>2020-02-28</span>
            		</li>
            		<li>
            			<a href="#">글 제목이 들어갑니다.</a>
            			<span>2020-02-28</span>
            		</li>
            		<li>
            			<a href="#">글 제목이 들어갑니다.</a>
            			<span>2020-02-28</span>
            		</li>
            		<li>
            			<a href="#">글 제목이 들어갑니다.</a>
            			<span>2020-02-28</span>
            		</li>
            	</ul>                     
			</div>
		</div>

		<div id="notice">
			<div id="notice_header"><span style="color: #FFC200">◆ </span>알림<a id="more">+전체보기</a></div>
			<div id="notice_body">
				<ul>
            		<li>
            			<a href="#">글 제목이 들어갑니다.</a>
            			<span>2020-02-28</span>
            		</li>
            		<li>
            			<a href="#">글 제목이 들어갑니다.</a>
            			<span>2020-02-28</span>
            		</li>
            		<li>
            			<a href="#">글 제목이 들어갑니다.</a>
            			<span>2020-02-28</span>
            		</li>
            		<li>
            			<a href="#">글 제목이 들어갑니다.</a>
            			<span>2020-02-28</span>
            		</li>
            	</ul>
			</div>
		</div>
	</section>
	
	<footer>2021 all rights reserved.<p>Made with Lee You ri, Yoon Ra Kyung, Kim Hye Ran</footer>
</body>
</html>
