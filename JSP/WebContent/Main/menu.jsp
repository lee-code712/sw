<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
function zoomIn(event) {
    event.target.style.width = "75px";
    event.target.style.height = "75px";
    event.target.style.transition = "all 0.5s";
  }

function zoomOut(event) {
	event.target.style.width = "70px";
    event.target.style.height = "70px";
    event.target.style.transition = "all 0.5s";
  }
</script>

<style>
img {
width:70px;
height:70px;
}
td {width:70px;}
#menu_table { height:300px; }
tr.left { text-align:left; }
</style>
</head>

<body>
<div align="center">
<table id="menu_table">
<tr class="left">
<td><h3>menu</h3></td>
</tr>
<tr>
	<td>
		<img src="image/apply.png" alt="apply" onmouseover="zoomIn(event)" onmouseleave="zoomOut(event)">
	</td>
	<td>&nbsp;</td>
	<td>
		<img src="image/list.png" alt="list" onmouseover="zoomIn(event)" onmouseleave="zoomOut(event)">
	</td>
	<td>&nbsp;</td>
	<td>
		<img src="image/message.png" alt="message" onmouseover="zoomIn(event)" onmouseleave="zoomOut(event)">
	</td>
	<td>&nbsp;</td>
	<td>
		<img src="image/notice.png" alt="notice" onmouseover="zoomIn(event)" onmouseleave="zoomOut(event)">
	</td>
</tr>
<tr>
	<td>
		<img src="image/tmp_button.png" alt="tmp_button" onmouseover="zoomIn(event)" onmouseleave="zoomOut(event)">
	</td>
	<td>&nbsp;</td>
	<td>
		<img src="image/tmp_button.png" alt="tmp_button" onmouseover="zoomIn(event)" onmouseleave="zoomOut(event)">
	</td>
	<td>&nbsp;</td>
	<td>
		<img src="image/tmp_button.png" alt="tmp_button" onmouseover="zoomIn(event)" onmouseleave="zoomOut(event)">
	</td>
	<td>&nbsp;</td>
	<td>
		<img src="image/tmp_button.png" alt="tmp_button" onmouseover="zoomIn(event)" onmouseleave="zoomOut(event)">
	</td>
</tr>
</table>
</div>
</body>
</html>