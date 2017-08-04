<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<span style="float:right; margin-top: -5px; margin-right: -5px; ">
	<a href="calendar.do?param_year=${ param.param_year }&param_month=${ param.param_month}"><img src="http://localhost:8080/jsp_prj/calendar/images/btn_close.png" alt="닫기" title="닫기" /></a>
</span>

<form name="writeFrm" method="post" enctype="multipart/form-data" action="write_process.jsp" >
<table style="margin: 20px auto; " >
	<tr>
		<th colspan="2" align="center" >
			<span>이벤트 작성</span>
		</th>
	</tr>
	<tr>
		<td class="tdTitle">작성자</td>
		<td class="tdContent">
			<input type="text" name="writer" class="inputBox" style="width:250px;"/>
		</td>
	</tr>
	<tr>
		<td class="tdTitle">IP Address</td>
		<td class="tdContent">
			<input type="text" name="ip" class="inputBox" value="<%= request.getRemoteAddr() %>" readonly="readonly"/>
		</td>
	</tr>
	<tr>
		<td class="tdTitle">이벤트일</td>
		<td class="tdContent">
			<input type="text" name="param_year" class="inputBox" value="${ param.param_year }" readonly="readonly" 
				style="width:40px;" />/
			<input type="text" name="param_month" class="inputBox" value="${ param.param_month }" readonly="readonly" 
				style="width:20px;" />/
			<input type="text" name="param_day" class="inputBox" value="${ param.param_day }" readonly="readonly" 
				style="width:20px;" />
		</td>
	</tr>
	<tr>
		<td class="tdTitle">작성일</td>
		<td class="tdContent">
			<input type="text" name="w_date" class="inputBox" value='<fmt:formatDate value="<%= new Date() %>" pattern="yyyy-MM-dd a HH:mm:ss" />' readonly="readonly" 
				style="width:250px;" />
		</td>
	</tr>
	<tr>
		<td class="tdTitle">제목</td>
		<td class="tdContent">
			<input type="text" name="subject" class="inputBox" style="width:250px;" />
		</td>
	</tr>
	<tr>
		<td class="tdTitle">내용</td>
		<td class="tdContent">
		<textarea name="content" style="width: 250px; height: 70px;" class="inputBox"></textarea>
		</td>
	</tr>
	<tr>
		<td class="tdTitle" colspan="2">
			<input type="button" class="btn" value="확인" onclick="writeChkNull()"/>
			<input type="reset" class="btn"  value="초기화"/>
		</td>
	</tr>
</table>
</form>
    