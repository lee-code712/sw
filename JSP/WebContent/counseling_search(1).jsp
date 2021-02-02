<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>counseling_search(1)</title>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<style>
		#logo {
			position: absolute;
			top: 15px;
			left: 403px;
		}
		
		#list {
			position: absolute;
			top: 30px;
			left: 591px;
		}
	
		#list ul {
			list-style: none;
			padding: 0;
			margin: 0;
		}
	
		#list li {
			display: inline;
		}
	
		#list a {
			text-decoration: none;
			color: #000000;
			padding: 0 15px;
		}
	
		#list a:hover {
			color: #88BFF1;
		}
	
		#myPage {
			position: absolute;
			top: 25px;
			left: 1346px;
		}
	
		#login_btn {
			border: 1px solid #88BFF1;
			background-color: #88BFF1;
			color: #FFFFFF;
			padding: 5px;
			border-radius: 5px;
		}
		
		#login button {
			position: absolute;
			top: 25px;
			left: 1401px;
			border: 1px solid #88BFF1;
			background-color: #88BFF1;
			color: white;
			padding: 5px 20px 5px 20px;
		}
	
		#login button:hover {
			color: #88BFF1;
			background-color: white;
		}
		
		#hr {
			position: absolute;
			top: 74px;
			width: 1900px;
			border: 1px solid #C4C4C4;
		}
		
		#home {
			position: absolute;
			top: 129px;
			left: 1337px;
		}
		
		#local1 {
			position: absolute;
			top: 126px;
			left: 1360px;
		}
		
		#next {
			position: absolute;
			top: 132px;
			left: 1407px;
		}
		
		#local2 {
			position: absolute;
			top: 127px;
			left: 1430px;
		}
		
		#p_name {
			position: absolute;
			top: 194px;
			left: 742px;
			width: 707px;
			height: 41px;
			border: 1px solid #C4C4C4;
		}
		
		#search {
			position: absolute;
			top: 194px;
			left: 1449px;
			width: 43px;
			height: 43px;
			border: 1px solid #C4C4C4;
		}
		
		#square {
			position: absolute;
			top: 268px;
			left: 742px;
			border-radius: 5px;
			width: 749px;
			height: 589px;
			border: 1px solid #C4C4C4;
		}
		
		#hr1 {
			position: absolute;
			top: 208px;
			left: 411px;
			width: 68px;
			border: 1px solid #C4C4C4;
		}
		
		#hr2 {
			position: absolute;
			top: 208px;
			left: 611px;
			width: 68px;
			border: 1px solid #C4C4C4;
		}
		
		#select {
			position: absolute;
			top: 208px;
			left: 514px;
		}
		
		ul, li {
			list-style: none; 
			padding: 0; 
			margin: 0;
		}

  		#ac {
  			position: absolute;
  			top: 269px;
  			left: 412px;
    		width: 267px;
  		}

  		#ac .m1 {
    		background: white;
    		border: 1px solid #C4C4C4;
    		border-left: 5px solid #88BFF1;
    		line-height: 40px;
    		text-align: center;
    		cursor: pointer;
  		}

  		#ac .m2 {
    		background: #F9F9F9;
    		display: none;
  		}
		
		#ac .m3 {
			border-top: 1px solid #C4C4C4;
		}
		
		#footer {
			position: absolute;
			top: 974px;
			width: 1900px;
			height: 210px;
			background-color: #F9F9F9;
			vertical-align: middle;
			text-align: center;
		}
	</style>
</head>
<body>
	<%-- 헤더 --%>
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
		<button id="login_btn">로그아웃</button>
	</div>
	
	<hr id="hr">
	
	<%--위치 --%>
	<img src="image/home.png" width="15" height="15" id="home">
	<div id="local1">home</div>
	<img src="image/next.png" width="15" height="15" id="next">
	<div id="local2"><font color="#88BFF1">상담예약</font></div>
	
	<%--교수명 검색 --%>
	<input type="text" id="p_name" value="교수명">
	<img src="image/search.jpg" id="search">
	<div id="square"></div>
	
	<%--단대 선택 --%>
	<hr id="hr1">
	<hr id="hr2">
	<div id="select">단대 선택</div>
	
	<%--메뉴 --%>
	<ul id="ac">
		<li class="m1">인문대학
			<ul class="m2">
				<li class="m3">국어국문학과</li>
				<li class="m3">국사학과</li>
				<li class="m3">문예창작과</li>
				<li class="m3">영어과</li>
				<li class="m3">일본어과</li>
				<li class="m3">프랑스어과</li>
				<li class="m3">독일어과</li>
				<li class="m3">중어중국학과</li>
			</ul>
		</li>
		<li class="m1">사회과학대학
			<ul class="m2">
				<li class="m3">경영학과</li>
				<li class="m3">세무회계학과</li>
				<li class="m3">경제학과</li>
				<li class="m3">국제경영학과</li>
				<li class="m3">문헌정보학과</li>
				<li class="m3">사회복지학과</li>
				<li class="m3">아동학과</li>
			</ul>
		</li>
		<li class="m1">자연과학대학
			<ul class="m2">
				<li class="m3">식품영양학과</li>
				<li class="m3">보건관리학과</li>
				<li class="m3">응용화학전공</li>
				<li class="m3">화장품학전공</li>
				<li class="m3">체육학과</li>
				<li class="m3">토탈뷰티케어학과</li>
			</ul>
		</li>
		<li class="m1">정보과학대학
			<ul class="m2">
				<li class="m3">컴퓨터학과</li>
				<li class="m3">정보통계학과</li>
			</ul>
		</li>
		<li class="m1">약학대학</li>
		<li class="m1">예술대학
			<ul class="m2">
				<li class="m3">회화과</li>
				<li class="m3">디지털공예과</li>
				<li class="m3">큐레이터학과</li>
				<li class="m3">피아노과</li>
				<li class="m3">관현악과</li>
				<li class="m3">성악과</li>
			</ul>	
		</li>
		<li class="m1">디자인대학
			<ul class="m2">
				<li class="m3">패션디자인학과</li>
				<li class="m3">시각&실내디자인학과</li>
				<li class="m3">미디어디자인학과</li>
			</ul>	
		</li>
		<li class="m1">공연예술대학
			<ul class="m2">
				<li class="m3">무용과</li>
				<li class="m3">방송연예과</li>
				<li class="m3">실용음악과</li>
				<li class="m3">모델과</li>
			</ul>		
		</li>
	</ul>
	
	<script>
    $('.m1').click(function(){
      $('.m2').slideUp();
      if($(this).children('.m2').is(':visible')){
        $(this).children('.m2').slideUp();
      }else{
        $(this).children('.m2').slideDown();
      }

    });
  </script>
  
	<%--footer --%>
	<table id="footer"><td>2021 all rights reserved.<p>Made with Lee You ri, Yoon Ra Kyung, Kim Hye Ran</td></table>
</body>
</html>
