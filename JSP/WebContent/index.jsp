<%-- 로그인 전 메인 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>index</title>
        <link rel="stylesheet" href="css/frame.css" />
        <link rel="stylesheet" href="css/index.css" />

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
    </head>

    <body>
        <header>
            <div id="inner_header">
                <div id="logo"><a href="index.jsp">상담E</a></div>

            <ul id="gnb_left">
                <li><a href="notice/notice.jsp">공지사항</a></li>
                <li><a>상담예약</a></li>
                <li><a>쪽지함</a></li>
            </ul>

            <ul id="gnb_right">
                <li><a>마이페이지</a></li>
                <li><button onClick="location.href='login/login.jsp';">로그인</button></li>
            </ul>
            </div>
        </header>

        <div id="banner">
            <div>
                교수-학생 간<p>
                상담일정 관리 서비스<p>
                <a>예약하기&nbsp;→</a>
            </div>
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
				<div id="announcement_header"><span>◆ </span>공지사항<a id="more">+전체보기</a></div>

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
			        <div id="notice_header"><span>◆ </span>알림<a id="more">+전체보기</a></div>

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
