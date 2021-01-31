<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index(noLogin)</title>

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
      	background-color: white;
      	color: #88BFF1;
      }

      #explain2 {
         position: absolute;
         top: 81px;
         width: 1900px;
         height: 385px;
         background-color: #EAF3FA;
         z-index: -1;
      }
      
      #explain3 {
         position: absolute;
         top: 171px;
         left: 1335px;
         color: #819ADE;
         font-size: 48px;
         font-weight: bold;
      }
      
      #explain4 {
         position: absolute;
         top: 249px;
         left: 1092px;
         color: #819ADE;
         font-size: 24px;
         font-weight: bold;
      }
      
      #counseling {
         position: absolute;
         top: 128px;
         left: 434px;
      }
   
      #schedule1 {
         position: absolute;
         top: 495px;
         left: 410px;
         width: 645px;
         height: 380px;
         border: 1px solid #C4C4C4;
         border-radius: 5px 5px 5px 5px;
         background-color: white;
      }
      
      #schedule2 {
         position: absolute;
         top: 495px;
         left: 410px;
         width: 647px;
         height: 37px;
         border: 1px solid #88BFF1;
         background-color: #88BFF1;
         border-radius: 5px 5px 0 0;
         vertical-align: middle;
         padding: 0 0 0 10px;
      }
   
      #hr3 {
         position: absolute;
         top: 527px;
         left: 1112px;
         width: 368px;
         border: 1px solid #ffffff;
         z-index: 1;
      }
      
      #announcement {
         position: absolute;
         top: 495px;
         left: 1109px;
         width: 371px;
         height: 170px;
         border: 1px solid #C4C4C4;
         background-color: #F9F9F9;
         border-radius: 5px 5px 5px 5px;
         padding: 5px 0 0 10px;
         color: #2575AF;
         z-index: 0;
      }
      
      #announcement2 {
         font-size: 12px;
         text-decoration: none;
      }
      
      #hr4 {
         position: absolute;
         top: 728px;
         left: 1112px;
         width: 368px;
         border: 1px solid #ffffff;
         z-index: 1;
      }
      
      #notice {
         position: absolute;
         top: 700px;
         left: 1109px;
         width: 371px;
         height: 170px;
         border: 1px solid #C4C4C4;
         background-color: #F9F9F9;
         border-radius: 5px 5px 5px 5px;
         padding: 5px 0 0 10px;
         color: #2575AF;
         z-index: 0;
      }
      
      #notice2 {
         font-size: 12px;
         text-decoration: none;
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
<%--헤더 --%>
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
   <button id="login_btn">로그인</button>
</div>

<%--그림 --%>
<div id="counseling"><img src="image/counseling.png" width="528" height="338"></div>
<div id="explain2"></div>
<div id="explain3">상담-E</div>
<div id="explain4">교수-학생 간 상담 일정 관리 서비스</div>

<%--상담일정 --%>
<div id="schedule1"></div>
<table id="schedule2"><td>상담일정</td></table>

<%-- 공지사항 --%>
<hr id="hr3">
<div id="announcement">공지사항<%for(int i = 0; i < 42; i++){%>&nbsp;<%}%><a href="#" id="announcement2">+전체보기</a></div>

<%--알림 --%>
<hr id="hr4">
<div id="notice">알림<%for(int i = 0; i < 48; i++){%>&nbsp;<%}%><a href="#" id="notice2">+전체보기</a></div>

<%--footer --%>
<table id="footer"><td>2021 all rights reserved.<p>Made with Lee You ri, Yoon Ra Kyung, Kim Hye Ran</td></table>
</body>
</html>
