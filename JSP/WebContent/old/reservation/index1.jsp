<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index1</title>

<style>
	.padding{
		padding: 50px;
	}
</style>
</head>

<body>
<div align="center">
	<h1>상담예약</h1>
<table>
	<tr>
		<td class="padding">
			<jsp:include page="reserve.jsp" /> 
		</td>
		<td>
			<% for(int i = 0; i < 40; i++){ %> |<br> <%}%>
		</td>
		<td class="padding">
			<jsp:include page="result1.jsp" />
		</td>
	</tr>
</table>
</div>
</body>
</html>