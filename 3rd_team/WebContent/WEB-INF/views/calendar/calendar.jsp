<%@page import="org.springframework.web.context.request.RequestScope"%>
<%@page import="kr.co.sist.ssangbang.user.calendar.service.CalendarService"%>
<%@page import="kr.co.sist.ssangbang.user.calendar.dao.CalendarDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CALENDAR</title>
<link href="http://localhost:8080/3rd_team/common/css/stylesheet.css"
	type="text/css" rel="stylesheet" />
	<link href="http://localhost:8080/3rd_team/common/css/calendar.css"
	type="text/css" rel="stylesheet" />
<style type="text/css"></style>
<script type="text/javascript"
	src="http://localhost:8080/3rd_team/common/js/jquery-1.12.0.js"></script>
<script type="text/javascript"
	src="http://localhost:8080/3rd_team/common/js/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript"
	src="http://localhost:8080/3rd_team/common/js/attach_list_component.js"></script>
<style type="text/css"></style>
</head>
<body>


<div id="list_header1">일정관리</div>
<div id="list_header2">

	<input type="checkbox" checked="checked" />기념일
	<input type="checkbox" checked="checked" />지난일정
	<input type="checkbox" checked="checked" />예약일정

</div><!-- div#list_header2 -->         
 
<div id="cal_wrap">
	
	<!-- 현재날짜 받기 -->
	<%
		Calendar cal = Calendar.getInstance();
		int nowYear = cal.get(Calendar.YEAR);
		int nowMonth = cal.get(Calendar.MONTH);
		int nowDay = cal.get(Calendar.DAY_OF_MONTH);

		// 사용자동작에 의해 입력된 parameter 월 받기
		String param_month = request.getParameter("param_month");
		// 사용자동작에 의해 입력된 parameter 년 받기
		String param_year = request.getParameter("param_year");
		if (param_month != null) {
			// 이전월이 클릭되어 월이 들어왔을 때
			cal.set(Calendar.MONTH, (Integer.parseInt(param_month)) - 1);
		} //end if
		if (param_year != null) {
			// 이전월이 클릭되어 년도가 들어왔을 때
			cal.set(Calendar.YEAR, (Integer.parseInt(param_year)));
		} //end if

		// 변경된 년도를 얻는다
		nowMonth = cal.get(Calendar.MONTH) + 1;
		nowYear = cal.get(Calendar.YEAR);
	%>
	<div id="cal_header">
		<div id="btn_wrap">
			<a href="#" id="prev_btn">&lt</a>
			<span class="boldDate"><%=nowYear%>.<%=nowMonth%></span> 
			<a href="#" id="next_btn">&gt</a> 
			<a href="index.jsp" id="today_btn">오늘</a>
		</div><!-- btn_wrap -->
	</div><!-- div#cal_header -->
	
	
	<div id="cal_content">
		<div id="tab_nav">
			<img src="http://localhost:8080/3rd_team/common/images/icon/15x15_sand_watch_icon.png"><span>예약</span>
			<img src="http://localhost:8080/3rd_team/common/images/icon/15x15_sand_watch_icon.png"><span>식당</span>
			<img src="http://localhost:8080/3rd_team/common/images/icon/15x15_sand_watch_icon.png"><span>카페</span>
			<img src="http://localhost:8080/3rd_team/common/images/icon/15x15_sand_watch_icon.png"><span>술</span>
		</div><!-- div#tab_nav -->
		<table id="cal_tab" border="1">
			<tr>
				<th class="weekTitle sunTitle">일</th>
				<th class="weekTitle">월</th>
				<th class="weekTitle">화</th>
				<th class="weekTitle">수</th>
				<th class="weekTitle">목</th>
				<th class="weekTitle">금</th>
				<th class="weekTitle satTitle">토</th>
			</tr>
				
			<!-- 스크립트릿은 로컬에 생성되기 때문에, static변수를 쓰려면 declaration에 작성해야함. -->
			<%! public static final int START_DAY = 1;

			//10자 이상의 글자를 10자 까지만 잘라서 '.' 을 붙이는 일
			public String blockStr(String str) {
				if (str != null && str.length() > 11) {
					str = str.substring(0, 10) + "..";
				} //end if	
				return str;
			}//blockStr() %>
				
			
			
							
			<%
				/* 요일별 글자색 */
				String textColor = "";
				String todayCss = "";
				String memo = "";

				/*  //년, 월에 해당하는 모든 이벤트 조회
				CalendarDAO cd = CalendarDAO.getInstance(); */

				/* // 해당 년월의 모든 이벤트 조회하여 저장하기 위한 Map
				Map<String, List<CalTitleVO>> evtMap = cd.selectMonthEvent(String.valueOf(nowYear),
									String.valueOf(nowMonth));

				// 해당일자로 조회된 이벤트들을 저장하기 위한 List
				List<CalTitleVO> evtList = null;   */

				///////////////////////////////////////////////////////////////////////
				for (int tempDay = 1;; tempDay++) {
					//증가하는 임시일자를 달력객체에 설정
					cal.set(Calendar.DAY_OF_MONTH, tempDay);

					//설정된 날짜를 받아와서 임시일자와 다르면,
					//마지막 날짜이기 때문에 반복문을 빠져나간다.
					if (cal.get(Calendar.DAY_OF_MONTH) != tempDay) {//1 31

						int startCnt = cal.get(Calendar.DAY_OF_WEEK); //다음달1일의 요일 1~7
						int endCnt = Calendar.SATURDAY + 1; //8

						//다음달 첫요일이 일요일이 아닌 경우에만 빈칸찍기.
						if (startCnt != Calendar.SUNDAY) {
							int nextMonthDays = cal.get(Calendar.DAY_OF_MONTH);
							for (int blank = startCnt; blank < endCnt; blank++) {
								out.print("<td><div class='nextMonth'>");
								out.print(nowMonth + 1);
								out.print(".");
								out.print(nextMonthDays++);
								out.println("</div></td>");
							} //end for
						} //end if

						out.print("</tr>");
						break;
					} //end if

					//1일을 출력하기 전에 공백 만든다.
					//시작일이 일요일이 아니라면 빈 td그리기
					switch (tempDay) {
					case START_DAY: //1일이라면,
						out.println("<tr>");
							int blankCnt = cal.get(Calendar.DAY_OF_WEEK); //일=1, 토=7
						//지난달로 설정
						cal.set(Calendar.MONTH, nowMonth - 2);
						//지난달의 마지막날 [31일]
						int lastDayOfPrevMonth = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
						int prevMonth = cal.get(Calendar.MONTH) + 1;
						int startPrevMonth = lastDayOfPrevMonth - (blankCnt - 2);

						///////현재 달로 재설정//////////////////////////////////////
						cal.set(Calendar.MONTH, nowMonth - 1);
						blankCnt = cal.get(Calendar.DAY_OF_WEEK);

						for (int t = 1; t < blankCnt; t++) {
							out.print("<td><div class='prevMonth'>");
							out.print(prevMonth);
							out.print(".");
							out.print(startPrevMonth++);
							out.println("</div></td>");
						} //end for
					}//end switch

					//요일별 글자 색 설정
					switch (cal.get(Calendar.DAY_OF_WEEK)) {
					case Calendar.SUNDAY:
						textColor = "weekText sunText";
						break;
					case Calendar.SATURDAY:
						textColor = "weekText satText";
						break;
					default:
						textColor = "weekText";
					}//switch

					todayCss = "";
					memo = "";
					// 오늘의 CSS설정
					Calendar this_cal = Calendar.getInstance();
					int this_year = this_cal.get(Calendar.YEAR);
					int this_month = this_cal.get(Calendar.MONTH) + 1;
					if (this_year == nowYear && this_month == nowMonth && tempDay == nowDay) {
						todayCss = " id='todayTd'";
						memo = "TODAY";
					} //end if

					// 해당 일의 모든 글을 List에 저장
					/* evtList = evtMap.get(String.valueOf(tempDay)); */
				%>
				<!-- table td에 날짜뿌리기 -->
				<td <%=todayCss%>>
					<a href="#void" <%-- onclick="writeEvt(<%=evtList.size()%>, --%> '<%=nowYear%>' , '<%=nowMonth%>', '<%=tempDay%>' )">
						<span class="<%=textColor%>"><%=tempDay%>&nbsp/&nbsp</span>
					</a><span class="memo"><%=memo%></span>
					<div>
						<c:if test="${ empty month_event }">이벤트없음</c:if>
						<c:forEach var="event" items="${ requestScope.month_event }">
							<c:out value="${event.title}"/> 
							<c:out value="${event.content}"/> 
						</c:forEach>
					</div>
				</td>

				<%
					//토요일 출력 후 새로운 <tr>생성
					switch (cal.get(Calendar.DAY_OF_WEEK)) {//sat=7, sun=1
					case Calendar.SATURDAY:
						out.println("</tr>");
						out.println("<tr>");
					}//end switch

					} //end for 
					///////////////////////////////////////////////////////////////////////
				%>		
			</table>
		</div><!-- div#cal_content -->
		
		
	</div><!-- div#cal_wrap -->
</body>
</html>