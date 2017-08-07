 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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