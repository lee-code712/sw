<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>
<link type="text/css" rel="stylesheet" href="main_style.css"></link>
<style>
input {
vertical-align: middle; 
}
div.list {
width: 170px;
margin-left: 0px;
float: left;
}
.list ul {
font-size: 15px;
color: black;
list-style: none;
text-indent: 5px;
}
.list ul li {
 background: #ffffff;
line-height: 28px;
border: 1px solid gray;
}
.list ul li a {
text-decoration: none;
color: black;
display: block;
}
.list ul li a:hover {
background: gray;
}
.list ul ul {
display:none;
position:absolute;
left:162px;
}
.list ul li:hover ul {
 display: block;
}
</style>
</head>
<body>
<header>
<div class="main" align="center">
<img src="image/main_logo_resize.png" id="main_logo" alt="main">
</div>
</header>
<nav>
	<ul>
		<li><a href="search.jsp">검&nbsp;&nbsp;&nbsp;&nbsp;색</a></li>
        <li><a href="../reservation/index1.jsp">상담예약</a></li>
        <li><a href="../message/message.jsp">쪽&nbsp;&nbsp;&nbsp;&nbsp;지</a></li>
    </ul>
</nav>
<div class="main" align="center">
<hr/>
<div align="center">
<h2>검&nbsp;&nbsp;&nbsp;&nbsp;색</h2>
</div>
<div align="center">
<form name="search_form" method="post">
<input type="text"> <input type="image" src="image/search_button.png" width="20px" height="20px">
</form>
</div>
<div class="list">
	<ul>
		<li><a href="#">인문대학</a>
		<ul>
		<li>국어국문학과</li>
		<li>국사학과</li>
		</ul>
		</li>
		
        <li>사회과학대학</li>
        <li>자연과학대학</li>
        <li>정보과학대학</li>
        <li>약학대학</li>
        <li>예술대학</li>
        <li>디자인대학</li>
        <li>공연예술대학</li>
        <li>교양대학</li>
        <li>연계전공</li>
    </ul>
</div>
<hr/>
</div>
<footer></footer>
</body>
</html>