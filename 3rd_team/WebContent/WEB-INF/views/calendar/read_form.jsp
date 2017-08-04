<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
	info="상세글보기" errorPage="cal_err.jsp" %>



<!-- 글 수정, 삭제 시 필요한 글번호num 받기. -->
<input type="hidden" name="num" value="${ param.num }"/>

<table style="margin: 20px auto; " >
	<tr>
		<th colspan="2" align="center" >
			<span>이벤트 읽기</span>
		</th>
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
		<td class="tdContent">${ d_evt.wDate }</td>
	</tr>
	<tr>
		<td class="tdTitle">제목</td>
		<td class="tdContent">
		<input type="text" name="subject" class="inputBox" style="width:250px;" value="${ d_evt.subject }" />
		</td>
	</tr>
	<tr>
		<td class="tdTitle">내용</td>
		<td class="tdContent">
		<textarea name="content" style="width: 250px; height: 70px;" class="inputBox">${ d_evt.contents }</textarea>
		</td>
	</tr>
	<tr>
		<td class="tdTitle" colspan="2">
			<input type="button" class="btn" value="변경" id="btnUpdate" />
			<input type="button" class="btn" value="삭제" id="btnDelete" onclick="deleteChkNull()"/>
			<input type="reset" class="btn"  value="초기화"/>
		</td>
	</tr>
</table>
</form>
    