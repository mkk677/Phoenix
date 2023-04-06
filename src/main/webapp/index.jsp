<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/division.css">
<style >
div.all {
	width: 100%;
}
div.left {	
	width: 20%;
	float: left;
}
div.right {
	width: 80%;
	float: right;
}
</style>
</head>
<body>
	<div class = "all">
		<div class = "left">
			<header ></header>
		</div>
		
		<div class = "right" >
		<%if(session.getAttribute("session_member")== null){ %>
			<script>
				location.href ="/login/login.jsp";
			</script>
		<%} else{%>
			<script>
				location.href ="/portfolio/portfolio.jsp";
			</script>
		<%}%>	
		</div>
	</div>
</body>
<script src="/header.js"></script>
</html>
