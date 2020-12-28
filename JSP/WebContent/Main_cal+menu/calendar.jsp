<%-- 최적 브라우저: Chrome browser --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Calendar"%>
<%!
	public String parseDay(int cnt, String day) {
		String line = "";
		
		if ((cnt + 1) % 7 == 0) { // 토요일
			line += "<font color=\"blue\">";
			line += day;
			line += "</font>";
		}
		else if((cnt) % 7 == 0) { // 일요일
			line += "<font color=\"red\">";
			line += day;
			line += "</font>";
		}
		else { // 평일
			line += day;
		}
		
		return line;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
<style>
#top {
	width: 600px;
	font-weight:bold;
}
#top_year {
	width:200px;
	text-align:left;
}
#top_month {
	width:200px;
	text-align:center;
}
#top_date {
	width:200px;
	text-align:right;
}
#calendar {
	border:1px solid gray;
	border-collapse:collapse;
	width:600px;
	height:250px;
	text-align:center;
}
#td_cal {
	border:1px solid gray;
	padding:5px;
	width:100px;
}
td.days {
	height:10px;
}
</style>
</head>

<body>
<%
	String [] days = new String[]{ "일", "월", "화", "수", "목", "금", "토" };
	Calendar today = Calendar.getInstance();
	int year_today = today.get(Calendar.YEAR);
	int month_today = today.get(Calendar.MONTH) + 1;
	int date_today = today.get(Calendar.DATE);
	
	out.println("<div align=\"center\">");
	out.println("<form method=\"post\" action=\"calendar.jsp\">");
	
	// 년도 및 월 초기화
	String sYear = request.getParameter("YEAR");
	int year;
	if (sYear == null) {
		year = year_today;
	}	
	else {
		year = Integer.parseInt(sYear);
	}
	
	String sMonth = request.getParameter("MONTH");
	int month;
	if (sYear == null) {
		month = month_today;
	}
	else {
		month = Integer.parseInt(sMonth);
	}
	
	// 년도 및 월 선택, 오늘 날짜 출력 부분
	out.println("<table id=\"top\">");
	out.println("<tr>");
	
	// 년도 선택
	out.print("<td id=\"top_year\">");
	out.print("<a href=\"calendar.jsp?YEAR="+(year - 1));
	out.print("&MONTH=" + month + "\">" + "◀ </a>" );
	out.print(year + "년");
	out.print("<a href=\"calendar.jsp?YEAR="+(year + 1));
	out.print("&MONTH=" + month + "\">" + "▶ </a>" );
	out.print("</td>");
	out.println();
	
	// 달 선택
	out.print("<td id=\"top_month\">");
	out.print("<a href=\"calendar.jsp?YEAR="+ year);
	if (month == 1) { // 현재 화면의 달이 1월이면 왼쪽 화살표를 눌러도 더 이상 이동하지 않음
		out.print("&MONTH=" + month + "\">" + "◀ </a>" );
	}
	else {
		out.print("&MONTH=" + (month - 1) + "\">" + "◀ </a>" );
	}
	out.print(month + "월");
	out.print("<a href=\"calendar.jsp?YEAR="+ year);
	if (month == 12) { // 현재 화면의 달이 12월이면 오른쪽 화살표를 눌러도 더 이상 이동하지 않음
		out.print("&MONTH=" + month + "\">" + "▶ </a>" );
	}
	else {
		out.print("&MONTH=" + (month + 1) + "\">" + "▶ </a>" );
	}
	out.print("</td>");
	out.println();
	
	// 오늘 날짜 출력
	out.println("<td id=\"top_date\">" + year_today + "-" + month_today + "-" + date_today + "</td>");
	out.println("</tr>");
	out.println("</table>");
	
	// 달력 출력
	Calendar cal = Calendar.getInstance();
	int date_toPrint = 1;
	cal.set(year, month - 1, date_toPrint);
	int cnt;
	int day = cal.get(Calendar.DAY_OF_WEEK);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	int cnt_end;
	if (day >= 6 && end >= 30) // 금, 토요일이 1일인 경우 달력의 한 행이 더 필요함
		cnt_end = 49;
	else
		cnt_end = 42;
	
	out.println("<table id=\"calendar\">");
	for (cnt = 0; cnt < cnt_end; cnt++) {
		if (cnt % 7 == 0) {
			out.println("<tr>");
		}
		
		out.print("<td id=\"td_cal\"");
		if (cnt >= 0 && cnt <= 6) { // 요일 출력
			out.println("class=\"days\">");
			out.println(parseDay(cnt, days[cnt]));
		}
		else {
			// 시작 날짜(1일)의 요일을 구한 뒤 (요일 - 1)만큼 빈 칸 출력
			// 끝 날짜의 요일을 구한 뒤 남은 칸은 공백 출력
			out.println(">");
			if ((cnt - 7) < day - 1 || date_toPrint > end) {
				out.println("&nbsp;&nbsp;&nbsp;&nbsp;");
			}
			else {
				out.println(parseDay(cnt, Integer.toString(date_toPrint)));
				date_toPrint++;
			}
		}
		out.println("</td>");
		
		if ((cnt + 1) % 7 == 0) {
			out.println("</tr>");
		}
	}
	out.println("</table>");
	out.println("</form>");
	out.println("</div>");
%>
</body>
</html>