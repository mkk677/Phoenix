<%@page import="com.phoenix.coverletter.dao.CoverletterDTO"%>
<%@page import="com.phoenix.user.dao.UserDTO"%>
<%@page import="com.phoenix.coverletter.dao.CoverletterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
System.out.println("=========deldb.jsp에들어옴====");
String cnum = request.getParameter("cnum"); //항목명
UserDTO userinf = (UserDTO)session.getAttribute("session_member");
String userid = userinf.getUserid();

CoverletterDTO dto = new CoverletterDTO();
dto.setCnum(cnum);
dto.setUserid(userid);

CoverletterDAO mdao = new CoverletterDAO();


switch (mdao.delCL(dto)) { // 0 - 실패 		1-있는정보삭제 		2-빈테이블만삭제
	case 0:
		//삭제실패
			out.print("not-ok");
		break;
	case 1:
		//삭제성공
		out.print("ok");
		break;
	
	case 2:
		//삭제성공
		out.print("empty");
		break;
	}


%>