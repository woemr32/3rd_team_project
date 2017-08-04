<%@page import="kr.co.sist.ssangbang.user.board.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	//서비스 객체 생성
	BoardService b_service=new BoardService();
	
	//제이슨 생성하여 스트링으로 변환(웹에서는 스트링으로만 움직인다.)
	String markers=b_service.allStore();
	
%>
<%= markers %>
