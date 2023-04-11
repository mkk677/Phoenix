<%@page import="com.phoenix.portfolio.PortfolioDAO"%>
<%@page import="com.phoenix.portfolio.PortfolioDTO"%>
<%@page import="com.phoenix.user.dao.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String pnum = request.getParameter("pnum");
UserDTO user = (UserDTO) session.getAttribute("session_member");
PortfolioDTO pdto = new PortfolioDTO();
pdto.setPnum(pnum);
pdto.setUserid(user.getUserid());

PortfolioDAO pdao = new PortfolioDAO();


switch (pdao.delDB(pdto)) { // 0 - 실패 		1-있는정보삭제 		2-빈테이블만삭제
case 0:
	//삭제실패%>
	<script>
	alert("삭제실패");
	location.href ="/portfolio/add.jsp?pnum="+"<%=pnum%>";
	</script>
	<%
	break;
case 1:
	//삭제성공%>
	<script>
	alert("삭제되었습니다.");
	location.href ="/portfolio/portfolio.jsp";
	</script>
	<%break;

case 2:
	//삭제성공%>
	<script>
		alert("삭제할것이 없습니다.");
		location.href ="/portfolio/add.jsp?pnum="+"<%=pnum%>";
	</script>
	<%
	break;
}
%>