<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Enumeration" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>result2</title>

<style>
	.t {
		text-align: center;
	}
	
	.s {
		border: 1px solid grey;
	}
</style>
</head>

<body>
<table class="s">
	<tr>
		<td width="800px" height="700px" class="t">
			<%=request.getParameter("p_name") %>교수님<br>
			<%=request.getParameter("birth") %> &nbsp;
			<%=request.getParameter("time1") %><br>
			예약이 완료되었습니다. 
			<br><br>
	
			상담 시간:&nbsp;
			<%=request.getParameter("time2") %> <br>
			
			상담 신청 사유: &nbsp;
			<%
				Enumeration<String> e = request.getParameterNames();
				
				while(e.hasMoreElements()){
					String n = (String)e.nextElement();
					if(n.equals("reason")){
						String[] s = request.getParameterValues(n);
						for(String s1 : s){
							out.print(s1 + "&nbsp;");
						}
					} else if(n.equals("reason2")){
						String s = request.getParameter("etc");
						out.print(s + "&nbsp;");
					}
				}
			%> <br> 
			
			상담 유형: &nbsp; <%=request.getParameter("type") %>
		</td>
	</tr>
</table>
<br><br><br><br>

<div align="center">
	<input type="button" value="홈으로 돌아가기">
</div>
</body>
</html>