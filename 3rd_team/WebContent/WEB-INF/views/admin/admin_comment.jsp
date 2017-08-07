<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN</title>
<link href="http://localhost:8080/3rd_team/common/css/common.css" type="text/css" rel="stylesheet" />
<link href="http://localhost:8080/3rd_team/common/css/admin_common.css" type="text/css" rel="stylesheet" />
    
<!-- accordion -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<style type="text/css">
    .ui-accordion .ui-accordion-content{
        border: none;
        padding: 0;
        text-align: right;
        padding: 5px 20px 5px 0;
        margin: 0;
        background-color: none;
        
    }
    .ui-widget-content{
        background: none;
    }
    .ui-accordion .ui-accordion-header{
        border: none;
        background-color: #c9c0a1;
        color: #111;
        padding: 0;
        padding: 10px;
        font-size: 13px;
    }
</style>
  
<script type="text/javascript" src="http://localhost:8080/3rd_team/common/js/jquery-1.12.0.js"></script>
<script type="text/javascript" src="http://localhost:8080/3rd_team/common/js/jquery-migrate-1.2.1.js"></script>

 <!-- tablesorter -->
<script type="text/javascript" src="https://mottie.github.io/tablesorter/js/jquery.tablesorter.js"></script> 
<script type="text/javascript" src="https://mottie.github.io/tablesorter/js/jquery.tablesorter.widgets.js"></script> 
<link rel="stylesheet" href="https://mottie.github.io/tablesorter/css/theme.blue.css" />

<script type="text/javascript" src="http://localhost:8080/3rd_team/common/js/admin_table.js"></script>
<link rel="stylesheet" href="http://localhost:8080/3rd_team/common/css/admin_table.css">
<script type="text/javascript" src="http://localhost:8080/3rd_team/common/js/admin_comment.js"></script>
  
</head>
<body>
<div id="wrap">
<div id="header">
    <div id="logo"><a href="#void" title="쌍방"></a></div>
    <span id="login"><a href="#void">관리자님 안녕하세요</a></span>
</div><!-- div#header -->
<div id="sub_header">
    <input class="btn" type="button" value="로그아웃" />
</div><!-- div#sub_header -->
<div id="container">



<div id="menu_wrap">
   <c:import url="${ request.contextPath }/admin_menu.do"/>
</div><!-- div#menu_wrap -->



<div id="content_wrap"> 

    <div id="content">
    
    	<form id="frm" action="review_del_process.do">
    	
	    <table class="tab tablesorter tablesorter-blue">
	    <thead>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>매장번호</th>
			<th>점수</th>
			<th>내용</th>
			<th>생성일</th>
			<th></th>
		</tr>
		</thead>
		<c:if test="${ empty requestScope.admin_review  }">
			<tr>
				<td colspan="7">작성된 후기가 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="review" items="${ requestScope.admin_review }">
			<tr>
				<td><c:out value="${ review.review_num }" /></td>
				<td><c:out value="${ review.id }" /></td>
				<td><c:out value="${ review.store_num }" /></td>
				<td><c:out value="${ review.score }" /></td>
				<td><c:out value="${ review.review }" /></td>
				<td><c:out value="${ review.inputDate }" /></td>
				<td>
				<input type="checkbox"  name="del_review_num" value="${ review.review_num }" class="chkbox" onclick="doAlert(this)" />
				</td>
			</tr>
		</c:forEach>
		</table>
		<input type="submit"  id="del_btn" class="btn" value="선택한 후기 삭제하기" />
		
		</form>
	</div><!-- div#content -->
	

</div><!-- div#content_wrap -->


</div><!-- div#container -->


<div id="footer">
   <c:import url="${ request.contextPath }/admin_foot.do"></c:import>
</div><!-- div#footer -->

    
</div><!-- div#wrap -->
</body>
</html>
