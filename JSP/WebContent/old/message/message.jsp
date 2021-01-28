<%-- 쪽지 페이지 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지</title>
<style>
div.message {
width:1200px;
margin:0 auto;
}
#message_menu {
width:150px;
height:50px;
}
#message {
width:900px;
height:500px;
border:1px solid gray;
}
#message_menu_content {
height:250px;
vertical-align:top;
}
#main_logo {
width:20%;
height:20%;
}
</style>
</head>

<body>
<div class="message" align="center">
<h3>쪽지함</h3>
</div>

<div class="message">
<span><a href="./../Main_cal+menu/Main_cal+menu.jsp">홈</a></span><span style="float:right;">OO님 환영합니다!</span>
<p/>

</div>

<div class="message" align="center">
<table id="message_table">
<tr>
	<td id="message_menu">
		<form  method="get" name="message_send" action="message_menu_content.jsp">
			<input type="hidden" name="action" value="0">
			<input type="submit" value="쪽지 보내기">
		</form>	
	</td>
	<td id="message_menu">
		<form method="get" name="message_list" action="message_menu_content.jsp">
			<input type="hidden" name="action" value="1">
			<input type="submit" value="쪽지함">
		</form>
	</td>
	<td id="message" rowspan="2">
	 일단 비워 둠...
	</td>
</tr>
<tr>
	<td id="message_menu_content" colspan="2">
		<hr/>
		<jsp:include page="message_menu_content.jsp" />
	</td>
</tr>
</table>
<p/>
<hr/>
</div>

<div class="message" align="left">
푸터 위치
</div>
</body>
</html>