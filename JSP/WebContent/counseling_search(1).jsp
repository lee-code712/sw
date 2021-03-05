<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>reserve_search</title>
    <link rel="stylesheet" href="css/frame.css" />
   
<style>
#banner {
  margin: 2px 0 74px 0;
  width: 100%;
  height: 80px;
  background-color: #FFFEFC;
}

#inner_banner {
  display: table;
  width: 1194px;
  height: 100%;
  margin: 0 auto;
}

#inner_banner div {
  display: table-cell;
  vertical-align: middle;
  font-size: 18px;
}

section {
	display: table;
	width: 1194px;
	height: 722px;
	margin: 0 auto;
}

#search {
	height: 35px;
	width: 350px;
	border: solid 1.5px #C4C4C4;
	background: #ffffff;
	display: block;
	float: right;
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

#select_dept {
	display: table-cell;
	width: 277px;
	height: 40px;
	border: 1px solid #FFC200;
	border-radius: 5px 5px 0 0;
	background-color: #FFC200;
	color: white;
	vertical-align: middle;
	text-align: center;
}

#search_result {
  	display: table-cell;
  	float: left;
  	margin-top: 20px;
    width: 277px;
    height: 40px;
    vertical-align: middle;
    text-align: center;
}

#search_result {
  	display: table-cell;
  	float: left;
  	margin-top: 88px;
    width: 277px;
    height: 40px;
    vertical-align: middle;
    text-align: center;
}

#search_result .college {
    background: white;
    border: 1px solid #C4C4C4;
    line-height: 40px;
    text-align: center;
    cursor: pointer;
 }

#search_result .dept_list {
    background: #F9F9F9;
    display: none;
}
		
#search_result .dept {
	border-top: 1px solid #C4C4C4;
}
.board_list_wrap {
	display: table-cell;
	float: right;
	margin-top: 20px;
}

.board_list {
    width: 888px;
    margin: 0 auto;
    border-top: 2px solid #FFC200;
}

.board_list th {
	background-color: #FFFEFC;
}

.board_list th,
.board_list td {
    padding: 10px;
    font-size: 14px;
     border-bottom: 1px solid #C4C4C4;
}
		
.board_list td {
    text-align: center;
}
</style>
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
		
		function op_dept_Search(dept_name)
		{
			var url = 'counseling_search_dept_result.jsp?d_name=';
			
			window.open(url + dept_name);
		}
	</script>
  </head>

  <body>
    <header>
      <div id="inner_header">
        <div id="logo"><a>상담E</a></div>

        <ul id="gnb_left">
          <li><a>공지사항</a></li>
          <li><a>상담예약</a></li>
          <li><a>쪽지함</a></li>
        </ul>

        <ul id="gnb_right">
          <li><a>마이페이지</a></li>
          <li><button>로그인</button></li>
        </ul>
      </div>
    </header>

    <div id="banner">
		  <div id="inner_banner">
			  <div>상담예약</div>
		  </div>
	  </div>

	<%--메뉴 --%>
	<section>
		
	<form method="get" action="counseling_search_prof_result.jsp" name="search_prof_form" onsubmit="return ck_search_form()">
	<%
		String p_name = (String)session.getAttribute("prof_name");
		
		out.println("<div id=\"search\">");
		out.println("<input type=\"text\" id=\"search_text\" name=\"p_name\" value=\"교수명을 입력하세요.\" onfocus=\"this.value=''\">");
		out.println("<img src=\"image/search.png\" id=\"search_btn\"");
		
		if (p_name != null) {
			// 교수명 검색 결과 출력
			out.println("<div id=\"section\">");
			out.println("<jsp:include page=\"counseling_search_prof_result.jsp\" flush=\"false\"/>");
			out.println("</div>");
		}
		else {
			// 빈 square 출력
			out.println("<div id=\"section\">");
			out.println("</div>");
		}
		out.println("</div>");
	%>
	</form>
	
	<ul id="search_result">
		<li id="select_dept">학과 선택</li>
		
		<li class="college">인문대학
			<ul class="dept_list">
				<li class="dept" onclick="op_dept_Search(this.innerText)">국어국문학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">국사학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">문예창작과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">영어과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">일본어과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">프랑스어과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">독일어과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">중어중국학과</li>
			</ul>
		</li>
		<li class="college">사회과학대학
			<ul class="dept_list">
				<li class="dept" onclick="op_dept_Search(this.innerText)">경영학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">세무회계학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">경제학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">국제경영학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">문헌정보학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">사회복지학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">아동학과</li>
			</ul>
		</li>
		<li class="college">자연과학대학
			<ul class="dept_list">
				<li class="dept" onclick="op_dept_Search(this.innerText)">식품영양학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">보건관리학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">응용화학전공</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">화장품학전공</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">체육학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">토탈뷰티케어학과</li>
			</ul>
		</li>
		<li class="college">정보과학대학
			<ul class="dept_list">
				<li class="dept" onclick="op_dept_Search(this.innerText)">컴퓨터학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">정보통계학과</li>
			</ul>
		</li>
		<li class="college">약학대학</li>
		<li class="college">예술대학
			<ul class="dept_list">
				<li class="dept" onclick="op_dept_Search(this.innerText)">회화과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">디지털공예과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">큐레이터학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">피아노과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">관현악과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">성악과</li>
			</ul>	
		</li>
		<li class="college">디자인대학
			<ul class="dept_list">
				<li class="dept" onclick="op_dept_Search(this.innerText)">패션디자인학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">시각&실내디자인학과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">미디어디자인학과</li>
			</ul>	
		</li>
		<li class="college">공연예술대학
			<ul class="dept_list">
				<li class="dept" onclick="op_dept_Search(this.innerText)">무용과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">방송연예과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">실용음악과</li>
				<li class="dept" onclick="op_dept_Search(this.innerText)">모델과</li>
			</ul>		
		</li>
	</ul>
	
	<script>
    	$('.college').click(function(){
      		$('.dept_list').slideUp();
      		if($(this).children('.dept_list').is(':visible')){
        		$(this).children('.dept_list').slideUp();
      		}else{
       	 		$(this).children('.dept_list').slideDown();
      		}
    	});
  	</script>
  
	<div class="board_list_wrap">
	<table class="board_list">
			<thead>
 			<tr>
    			<th>교수명</th>
     			<th>학과</th>
     			<th>정보보기</th>
    			<th>선택하기</th>
   			</tr>
			</thead>

			<tbody>
   			<tr>
      			<td>000교수님</td>
      			<td>컴퓨터학과</td>
      			<td class="tit">
         			<a>정보보기</a>
      			</td>
      			<td class="tit">
      				<a>선택하기</a>
      			</td>
   			</tr>
 		 </table> 
 		</div>
 	</section>
 	
 	<footer>2021 all rights reserved.<p>Made with Lee You ri, Yoon Ra Kyung, Kim Hye Ran</footer>
</body>
</html>
