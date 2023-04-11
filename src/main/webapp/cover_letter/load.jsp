<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.phoenix.coverletter.dao.CoverletterDTO"%>
<%@page import="com.phoenix.user.dao.UserDTO"%>
<%@page import="com.phoenix.coverletter.dao.CoverletterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserDTO userinf = (UserDTO)session.getAttribute("session_member");
	String userid = userinf.getUserid();
	
	CoverletterDTO clDto = new CoverletterDTO();
	clDto.setUserid(userid);


	CoverletterDAO mdao = new CoverletterDAO();
	int DBlen = mdao.getCLlen(clDto); //자소서 개수
	CoverletterDTO[] tableDB = mdao.loadDB(clDto);//데이터 로드

//	3/tb_1&수정제목11&수정내용11/tb_2&수정제목2&수정내용2/tb_0&test&test
//	/를 기준으로 첫번째가 테이블개수 그뒤부턴 게시물의 제목과 내용과 테이블아이디
//	&기준으로 아이이 타이틀 내용
	out.print(DBlen);
	for(int i=0;i<tableDB.length;i++){
		out.print("/");
		out.print(tableDB[i].getCnum());
		out.print("&");
		out.print(tableDB[i].getCtitle());
		out.print("&");
		out.print(tableDB[i].getCcontents());
	}
%>
