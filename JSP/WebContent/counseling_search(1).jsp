<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>counseling_search(1)</title>
	<link type="text/css" rel="stylesheet" href="css/frame.css"></link>
	<link type="text/css" rel="stylesheet" href="css/counsel_search(1).css"></link>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script language="javascript">
		function ck_search_form()
		{
			var form = document.search_prof_form;
    
			if(form.p_name.value == ""){
    			alert("교수명을 입력해 주세요.");
    			form.p_name.focus();
    			return false;
			}
		}
	</script>
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
	<form method="post" action="counseling_search_result.jsp" name="search_prof_form" onsubmit="return ck_search_form()">
	<%
		String p_name = (String)session.getAttribute("prof_name");
	
		out.println("<input type=\"text\" id=\"p_name\" name=\"p_name\" value=\"교수명\" onfocus=\"this.value=''\">");
		out.println("<input type=\"submit\" id=\"search\" alt=\"search_button\" value=\"\">");
		
		if (p_name != null) {
			// 교수명 검색 결과 출력
			out.println("<div id=\"square\">");
			out.println("<jsp:include page=\"counseling_search_result.jsp\" flush=\"false\"/>");
			out.println("</div>");
		}
		else {
			// 빈 square 출력
			out.println("<div id=\"square\">");
			out.println("</div>");
		}
	%>
	</form>
	
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
	<table id="footer"><tr><td>2021 all rights reserved.<p>Made with Lee Yu ri, Yoon Ra Kyung, Kim Hye Ran</td></tr></table>
</body>
</html>