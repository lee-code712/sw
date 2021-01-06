<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>reserve</title>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript" src="jquery.ui.datepicker-ko.js"></script>
<script type="text/javascript">
	var year, month, day; 
	$(document).ready(function() {
    	$("#birth").datepicker({onSelect: function(dateText , inst){ 
  			var dateArr = dateText.split("/"); 
  			year = dateArr[2]; 
  			month = dateArr[0]; 
  			day = dateArr[1]; 
		}}); 
    	showOn:"button"; 
	}); 
</script>
</head>

<body>
<form action="index2.jsp" method="post">
<table>
	<tr>
    	<td>교수명 <br><br>
			<input type="text" size="20px" name="p_name"> &nbsp; <input type="button" value="검색"> <br><br>
			______________________________________________ <br><br>
		</td>
	</tr>
    <tr>
    	<td>상담시간 <br><br>
    	<input type="text" id="birth" size="14" maxlength="10" name="birth" value="상담 날짜 선택(클릭)">
    	<br><br>

		<select name="time1">
			<option>오전 9:00</option>
			<option>오전 10:00</option>
			<option>오전 11:00</option>
			<option>오후 12:00</option>
			<option>오후 13:00</option>
			<option>오후 14:00</option>
			<option>오후 15:00</option>
			<option>오후 16:00</option>
			<option>오후 17:00</option>
		</select>

		<select name="time2">
			<option>10분</option>
			<option>20분</option>
			<option>30분</option>
			<option>40분</option>
			<option>50분</option>
			<option>60분 이상</option>
		</select>
		<br><br>
			______________________________________________ <br><br>
		</td>
	</tr>
    <tr>
    	<td>상담 신청 사유 <br><br>
			<input type="checkbox" name="reason" value="전담교수 면담">전담교수 면담 <br>
			<input type="checkbox" name="reason" value="진로 상담">진로 상담 <br>
			<input type="checkbox" name="reason" value="휴학 상담">휴학 상담 <br>
			<input type="checkbox" name="reason" value="대학원 상담">대학원 상담 <br>
			<input type="checkbox" name="reason2" value="기타: ">기타: <input type="text" name="etc"> <br><br>
			______________________________________________ <br><br>
		</td>
	</tr>
    <tr>
    	<td>상담 유형 <br><br>
			<input type="radio" name="type" value="오프라인"> 오프라인 &nbsp;
			<input type="radio" name="type" value="온라인"> 온라인
		</td>
   	</tr>
   	<tr>
    	<td>
    		<br><br>
        	<input type=submit value="완료">
       	</td>
  	</tr>
</table>
</form>
</body>
</html>