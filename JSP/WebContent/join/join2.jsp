<%-- 회원가입 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join.jsp</title>

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
	table {
		border-collapse: collapse;
		border-spacing: 0;
	}
	
	#main_join {
		margin: 0px auto;
		width: 378px;
		height: 530px;
		margin-top: 10%;
		text-align: center;
	}
	
	#title_join {
		font-weight: bold;
		font-size: 48px;
		color: #FFC200;
	}
	
	#title_join a {
		text-decoration: none; 
		color: #FFC200;
	}
	
	#search {
		height: 35px;
		width: 374px;
		border: solid 1px #C4C4C4;
		background: #ffffff;
		display: block;
		float: right;
		margin-top: 60px;
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
	
	#same_check_button_join {
		padding: 5px 15px;
		border: 1px solid #C4C4C4;
		border-radius: 30px;
		color: black;
		background-color: #EFEFEF;
		cursor: pointer;
	}
	
	#same_check_button_join:hover {
		border: 1px solid #FFC200;
		color: #FFC200;
		background-color: white;
	}
	
	.join_form_left_td {
		width: 102px;
		height: 40px;
		border: 1.5px solid #c4c4c4;
		font-size: 14px;
		background-color: white;
	}

	.join_form_input_td {
		border: 1.5px solid #c4c4c4;
		text-align: left;
	}

	.join_form_input {
		width: 276px;
		height: 40px;
		border: none;
	}
	
	#join_form_stuID {
		width: 180px;
		height: 40px;
		border: none;
		background-color: white;
	}
	
	#join_button {
		display: table-cell;
		margin: 40px 0 20px 0;
		width: 378px;
		height: 50px;
		color: white;
		background: #FFC200;
		font-size: 14px;
		border: 1px solid #FFC200;
		border-radius: 10px;
	}
	
	#join_button:hover {
		background: white;
		color: #FFC200;
		border: solid #FFC200 1px;
		cursor: pointer;
	}
</style>
</head>
<body>
<div id="main_join">
	<div id="title_join"><a href="index.jsp">상담E</a></div>

	<form method="get" action="join_univSearch.jsp" name="search_univ_form" onsubmit="return ck_search_form()">
		<table>
			<tr>
				<td id="search">
					<input type="text" value="대학명을 입력하세요." id="search_text">
					<img src="image/search.png" id="search_btn">
				</td>
			</tr>
		</table>
	</form>
	
	<form method="post" action="join_stuAddMember.jsp" name="join_form" onsubmit="return ck_join_form()">
		<table>
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
					<button id="same_check_button_join" onclick="ck_stuID()" value="">중복확인</button>
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
		
		<input type="submit" id="join_button" alt="join button" value="가입하기">
	</form>
</div>
</body>
</html>
