<%@page import="com.phoenix.coverletter.dao.CoverletterDAO"%>
<%@page import="com.phoenix.coverletter.dao.CoverletterDTO"%>
<%@page import="com.phoenix.user.dao.UserDTO"%>
<%@page import="com.phoenix.user.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

// 	System.out.println("===================save====");
	String tableNum = request.getParameter("tableNum"); //항목명
	String ctitle = request.getParameter("ctitle"); //항목명
	String ccontents = request.getParameter("ccontents"); //자소서 내용도 똑같이 가져와야함
	System.out.println("========="+ctitle+"========="+ccontents+"====");
	
	CoverletterDAO mdao = new CoverletterDAO();
	
	UserDTO userinf = (UserDTO)session.getAttribute("session_member");
	String userid = userinf.getUserid();
	
	CoverletterDTO clDto = new CoverletterDTO();
	clDto.setCnum(tableNum);
	clDto.setCtitle(ctitle);
	clDto.setCcontents(ccontents);
	clDto.setUserid(userid);
	
	if(mdao.saveCL(clDto)){
		//저장완료
		out.print("ok");//결과값을 자신을 부른 곳으로 넘겨주는
	}else{
		//저장실패
		out.print("not-ok");
	}
%>