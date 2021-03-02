<%-- 회원가입 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script>
	function ck_join_form()
	{
    	var form = document.join_form;
        
    	if(!form.univ.value){
        	alert("대학명을 입력해 주세요.");
        	return false;
    	}
    	
    	if(!form.stuID.value){
    	    alert("학번을 입력해 주세요.");
   	    	return false;
   		}
    
    	if(form.isChecked.value != "checked"){ 
        	alert("학번 중복체크를 해 주세요.");
        	return false;
    	}
    
    	if(!form.pw.value){
        	alert("비밀번호를 입력해 주세요.");
        	form.pw.focus();
        	return false;
    	}
    
    	// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
    	if(form.pw.value != form.pw_ck.value ){
        	alert("비밀번호와 비밀번호 확인에 입력된 값이 일치하지 않습니다.");
        	form.pw.focus();
        	return false;
    	}
	}

	function ck_stuID(){
    	window.name = "parentForm";
    	window.open("join_sessionRemove.jsp");
    	openWin = window.open("join_stuIDCheck.jsp", "ckForm", "width=500, height=300, resizable = no, scrollbars = no");
	}
	
	function ck_search_form(){
		var form = search_univ_form;
		
		if(form.univ_name.value == "") {
			alert("대학명을 입력해 주세요");
        	form.univ_name.focus();
        	return false;
		}
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
	text-align: left;
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
	background: url('image/search_button.png');
	background-repeat: no-repeat;
	width: 40px;
	height: 40px;
	border: 0;
}
#same_check_button_join {
	background: url('image/same_check_button.png');
	background-repeat: no-repeat;
	width: 110px;
	height: 30px;
	border: 0;
}
#join_button {
	background: url('image/join_button.png');
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

<form method="post" action="join_univSearch.jsp" name="search_univ_form" onsubmit="return ck_search_form()">
<table id="search_univ_table">
<tr>
	<td>
		<input type="text" id="search_univ" name="univ_name" maxlength="40" value="검색하고자 하는 대학명을 입력해 주세요" onfocus="this.value=''"/>
	</td>
	<td>
		<input type="submit" id="search_button_join" alt="search button" value="">
	</td>
</tr>
</table>
</form>

<p>

<form method="post" action="join_stuAddMember.jsp" name="join_form" onsubmit="return ck_join_form()">
<table id="join_form_table">
<tr>
	<td class="join_form_left_td">대학명</td>
	<td class="join_form_input_td">
		<%
			String univ = (String)session.getAttribute("univ");
			if(univ == null)
				out.println("<input type=\"text\" id=\"join_form_univ\" class=\"join_form_input\" maxlength=\"40\" name=\"univ\" value=\"검색 창에서 입력하세요\" disabled/>");
			else
				out.println("<input type=\"text\" id=\"join_form_univ\" class=\"join_form_input\" maxlength=\"40\" name=\"univ\" value=\"" + univ + "\" disabled/>");
		%>	
	</td>
</tr>
<tr>
	<td class="join_form_left_td">학번</td>
	<td class="join_form_input_td">
		<input type="text" id="join_form_stuID" name="stuID" maxlength="10" value="우측 중복체크 버튼 클릭" disabled/>
		<input type="button" id="same_check_button_join" alt="check button" value="" onclick="ck_stuID()">
		<input type="hidden" id="join_isChecked" name="isChecked" value="unchecked">
	</td>
</tr>
<tr>
	<td class="join_form_left_td">아이디</td>
	<td class="join_form_input_td">
		<input type="text" id="join_form_ID" class="join_form_input" name="id" value="학번 확인 시 자동으로 생성됩니다" disabled />
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