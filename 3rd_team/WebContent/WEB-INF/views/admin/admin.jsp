<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN</title>
<link href="http://localhost:8080/3rd_team/common/css/common.css" type="text/css" rel="stylesheet" />
<link href="http://localhost:8080/3rd_team/common/css/common_admin.css" type="text/css" rel="stylesheet" />
    
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
    
<!-- accordion -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $( "#menu_list1" ).accordion({
        heightStyle: "content",
      collapsible: true
    });
    $( "#menu_list2" ).accordion({
        heightStyle: "content",
      collapsible: true
    });
    $( "#menu_list3" ).accordion({
        heightStyle: "content",
      collapsible: true
    });
    $( "#menu_list4" ).accordion({
        heightStyle: "content",
      collapsible: true
    });
    $( "#menu_list5" ).accordion({
        heightStyle: "content",
      collapsible: true
    });
});//ready
</script>

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
    <div id="menu_list1" class="none_sub menu_list">
        <h3>회원관리</h3>
        <div>
            <p class="sub_menu">
                <a href="#void">회원보기/삭제</a>
            </p>
        </div>
    </div>
    <div id="menu_list2" class="menu_list">
        <h3>매장관리</h3>
        <div>
            <p class="sub_menu">
                <a href="#void">매장보기/수정/삭제</a>
            </p>
            <p class="sub_menu">
                <a href="#void">신규매장등록</a>
            </p>
        </div>
    </div>
    <div id="menu_list3" class="menu_list">
        <h3>데이트코스관리</h3>
        <div>
            <p class="sub_menu">
                <a href="#void">코스보기/수정/삭제</a>
            </p>
            <p class="sub_menu">
                <a href="#void">신규코스등록</a>
            </p>
        </div>
    </div>
    <div id="menu_list4" class="none_sub menu_list">
        <h3>후기게시판관리</h3>
        <div>
            <p class="sub_menu">
                <a href="#void">후기보기/삭제</a>
            </p>
        </div>
    </div>
    <div id="menu_list5" class="none_sub menu_list">
        <h3>요청게시판관리</h3>
        <div>
            <p class="sub_menu">
                <a href="#void">요청보기/삭제</a>
            </p>
        </div>
    </div><!-- div#menu_list-->
</div><!-- div#menu_wrap -->
<div id="content_wrap">
    
    
    
    <!------------------ 
        CONTENT IMPORT 
    ---------------------> 
    <div id="content">
        
 
    <c:import url="admin_comment.do"/>
    
 <%--     <table border="1">
	<tr>
		<th>번호1</th>
		<th>작성자</th>
		<th>매장번호</th>
		<th>점수</th>
		<th>내용</th>
		<th>생성일</th>
	</tr>
	<c:if test="${ empty requestScope.admin_review  }">
		<tr>
			<td colspan="6">작성된 후기가 없습니다.</td>
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
		</tr>
	</c:forEach>
</table> --%>
        
    </div><!-- div#content -->
    
    
    
    
</div><!-- div#content_wrap -->
</div><!-- div#container -->
<div id="footer">
    <div id="foot_container">
        <p id="foot_logo"></p>
        <p class="foot_info">
            <b>(주)쌍방</b><br/>
            대표 : 양재호 강솔비 박승리 이재득<br/>
            주소 : 서울시 강남구 쌍용교육센터 8층<br/><br/>
        </p>
        <p class="foot_info">
            사업자 번호 : 220-88-59156<br/>
            전화 : 1111-1111  팩스 : 02-111-1111<br/>
            통신판매업신고번호 : 제2017-서울 강남-00000호<br/><br/>
        </p>
        <span id="rights">
            Ssangbang, Inc. All rights reserved.
        </span>
    </div><!-- div#foot_container-->
</div><!-- div#footer -->
    
</div><!-- div#wrap -->
</body>
</html>
