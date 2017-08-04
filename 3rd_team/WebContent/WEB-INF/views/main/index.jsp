<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>DateCuration</title>

<link href="http://localhost:8080/3rd_team/common/css/stylesheet.css" type="text/css" rel="stylesheet" />
<style type="text/css"></style>

<script type="text/javascript" src="http://localhost:8080/3rd_team/common/js/jquery-1.12.0.js"></script>
<script type="text/javascript" src="http://localhost:8080/3rd_team/common/js/jquery-migrate-1.2.1.js"></script> 
<script type="text/javascript" src="http://localhost:8080/3rd_team/common/js/attach_list_component.js"></script> 

</head>
<body>
<div id="wrap">  
    
<div id="header">
    <div id="logo"><a href="#"><img alt="쌍방로고" title="쌍방메인" src="http://localhost:8080/3rd_team/common/images/main/logo_168x60.png"/></a></div>
    
    <div id="nav">
    	<span class="nav_btn"><a href="#">지도검색</a></span>
    	<span class="nav_btn"><a href="#">후기검색</a></span>
    	<span class="nav_btn"><a href="#">일정관리</a></span>
    </div>
</div><!-- div#header -->
    
<div id="container">

    <div id="search-form">
    	<input class="inputBox" type="text" placeholder="검색" />
    	<a href="#"><span class="search-btn"></span></a>
    </div><!-- div#search-form -->
    
    <div id="filter">
        <ul id="filters-list">
        <li class="filters" value="food"></li>
        <li class="filters" value="cafe"></li> 
        <li class="filters" value="alcohol"></li>
        <li class="filters" value="parking"></li>
        <li class="filters" value="curation"></li> 
        </ul>
    </div><!--div#filter-->
    
    <div id="content">
    
<!-- map -->
    	
        <div id="map-component">
		<c:import url="http://localhost:8080/3rd_team/map/map.jsp"/>    	
        </div><!-- div#map-component -->
         
        <div id="list-component">
        	<span id="list_close_icon"><a href="#"><</a></span>
        	<c:import url="calendar.do"></c:import>
        </div><!-- div#list-component -->
    </div><!-- div#content -->
</div><!-- div#container -->
    
<!--<div id="footer"></div>--><!-- div#footer -->
    
</div><!-- div#wrap -->
</body>
</html>
        