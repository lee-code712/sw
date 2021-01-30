<%-- 회원가입 페이지 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script>
	function ck_join_form()
	{
    	var form = document.join_form;

    	if(!form.stuID.value){
    	    alert("학번을 입력해 주세요.");
   	    	return false;
   		}
    
    	if(form.ck_stuID.value != "checked"){
        	alert("학번 중복체크를 해 주세요.");
        	return false;
    	}
    
    	if(!form.pw.value){
        	alert("비밀번호를 입력해 주세요.");
        	return false;
    	}
    
    	// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
    	if(form.pw.value != form.pw_ck.value ){
        	alert("비밀번호와 비밀번호 확인에 입력된 값이 일치하지 않습니다.");
        	return false;
    	}    
    
    	if(!form.univ.value){
        	alert("대학명을 입력해 주세요.");
        	return false;
    	}
	}

	function ck_stuID(){
    	window.name = "parentForm";
    	window.open("아이디 체크 페이지.jsp", "ckForm", "width=500, height=300, resizable = no, scrollbars = no");    
	}

	// 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
	// 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
	// 다시 중복체크를 하도록 한다.
	function ck_stuID_checked(){
    	document.join_form.isChecked.value ="unchecked";
	}
</script>

<style>
#main_join {
	margin: 0px auto;
	width: 641px;
	height: 603px;
	border: 1.5px solid #c4c4c4;
	border-radius: 0.5em;
	text-align: center;
}
#search_univ {
	width: 463px;
	height: 35px;
	border: 1.5px solid #c4c4c4;
}
#search_univ_table {
	margin: 0px auto;
	height: 40px;
}
#title_join {
	font-size: 20px;
}
#join_form_table {
	margin: 0px auto;
	width: 549px;
	height: 196px;
	border: 1.5px solid #c4c4c4;
	border-collapse: collapse;
}
.join_form_left_td {
	width: 189px;
	border: 1.5px solid #c4c4c4;
}
.join_form_input_td {
	border: 1.5px solid #c4c4c4;
}
.join_form_input {
	width: 355px;
	height: 40px;
	border: none;
}
#join_form_stuID {
	width: 220px;
	height: 40px;
	border: none;
}
#same_check_button_join {
	vertical-align: middle;
}
#search_button_join {
	background: url(image/search_button.png);
	background-repeat: no-repeat;
	width: 40px;
	height: 40px;
	border: 0;
}
#same_check_button_join {
	background: url(image/same_check_button.png);
	background-repeat: no-repeat;
	width: 110px;
	height: 30px;
	border: 0;
}
#join_button {
	background: url(image/join_button.png);
	background-repeat: no-repeat;
	width: 212px;
	height: 40px;
	border: 0;
}

</style>

<title>Join</title>
</head>

<body>
<div id="main_join">
<p id="title_join"><b>회원가입</b></p>

<form name="search_univ_form">
<table id="search_univ_table">
<tr>
	<td>
		<input type="text" id="search_univ" maxlength="40"/>
	</td>
	<td>
		<input type="submit" id="search_button_join" alt="search button" value="">
	</td>
</tr>
</table>
</form>

<p>

<form name="join_form" onsubmit="return ck_join_form()">
<table id="join_form_table">
<tr>
	<td class="join_form_left_td">대학명</td>
	<td class="join_form_input_td">
		<input type="text" id="join_form_univ" class="join_form_input" maxlength="40" name="univ"/>
	</td>
</tr>
<tr>
	<td class="join_form_left_td">학번</td>
	<td class="join_form_input_td">
		<input type="text" id="join_form_stuID" name="stuID" maxlength="10" onkeydown="ck_stuID_checked()"/>
		<input type="submit" id="same_check_button_join" alt="check button" value="" onclick="ck_stuID()">
		<input type="hidden" name="isChecked" value="unchecked">
	</td>
</tr>
<tr>
	<td class="join_form_left_td">아이디</td>
	<td class="join_form_input_td">
		<input type="button" id="join_form_ID" class="join_form_input" name="id" disabled />
	</td>
</tr>
<tr>
	<td class="join_form_left_td">비밀번호</td>
	<td class="join_form_input_td">
		<input type="text" id="join_form_PW" class="join_form_input" maxlength="20" name="pw"/>
	</td>
</tr>
<tr>
	<td class="join_form_left_td">비밀번호 확인</td>
	<td class="join_form_input_td">
		<input type="text" id="join_form_PW_CK" class="join_form_input" maxlength="20" name="pw_ck"/>
	</td>
</tr>
</table>

<p>

<input type="submit" id="join_button" alt="join button" value="">
</form>
</div>
</body>
</html>