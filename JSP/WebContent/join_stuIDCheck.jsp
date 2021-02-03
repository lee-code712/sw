<%-- join.jsp의 자식 창, 학번 중복 확인 페이지 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script>
	function setParentText() { // 부모 페이지(join.jsp)로 값을 보냄... 겉으로는 보내진 것처럼 보이나 value에 값이 들어가지 않는 문제... 해결 필요...
		opener.document.getElementById("join_form_stuID").value = document.getElementById("userStuID").value
		opener.document.getElementById("join_isChecked").value = document.getElementById("isChecked").value
		window.close()
	}
</script>

<style>
	#wrap {
		width: 490px;
		text-align: center;
		margin: 0 auto;
		text-align: center;
	}
</style>

<title>check student id</title>
</head>
<body>
<div id="wrap">
<form method="post" name="stuID_check_form" action="join_stuIDCheckAction.jsp">
    <br/>
    <b><font size="4" color="gray">학번 중복 체크</font></b>
    <hr size="1" width="460">
    <br>
    <%
    	String join_stuID = (String)session.getAttribute("join_stuID");
    	
    	if (join_stuID == null)
    		out.println("<input type=\"text\" id=\"userStuID\" name=\"stuID\" maxlength=\"10\"/>");
    	else
			out.println("<input type=\"text\" id=\"userStuID\" name=\"stuID\" maxlength=\"10\" value=\"" + join_stuID + "\" disabled />");
	%>
	<input type="submit" value="중복 확인">
	<br/>
	<input id="cancelBtn" type="button" value="취소" onclick="window.close()">
	<%
	out.println("<input type=\"hidden\" id=\"isChecked\" name=\"isChecked\" value=\"checked\">");
	%>
	
	<%
		Integer stuID_ck = (Integer)session.getAttribute("ck");
		
		if (stuID_ck != null) {
			if(stuID_ck == 0)
				out.println("<script>alert('이미 가입된 학번입니다.');</script>");
			else {
				out.println("<script>alert('사용 가능한 학번입니다. 확인 버튼을 눌러 주세요');</script>");
				out.println("<input id=\"ckBtn\" type=\"button\" value=\"확인\" onclick=\"setParentText()\">");
			}
		}
	%> 
</form>
</div>
</body>
</html>