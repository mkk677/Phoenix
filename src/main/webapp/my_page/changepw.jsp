<%@page import="com.phoenix.user.dao.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>         
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EditPW</title>

<!-- <link rel="stylesheet" href="/division.css"> -->
<style >
body {font-family: Arial, Helvetica, sans-serif; }

div {
	width: 100%;
}
div.left {	
	width: 20%;
	float: left;
}
div.right {
	width: 80%;
	float: right;
	height: 670px;
	display: flex;
	justify-content: center;
	align-items: center;
}

legend{
	font-size: 25px;
}

form { 
	width: 65%;
	 }

*:focus {
    outline: 0;
}

label{
	display:inline-block;
	width: 150px;
	padding: 5px;
}

label.re{width: 140px; margin-left: 70px;}

input[type=button],input[type=submit],input[type=reset] {
	display:inline-block;
	width: 60px;
	background-color: #434343;
	color: white;
	padding: 5px 5px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
}
input[type=text] ,input[type=password]{
	background-color:#00ff0000;
	padding: 5px 5px;
	margin: 8px 0;
	border: hidden;
	cursor: pointer;
	border-bottom: solid thin;
	border-bottom-color:#434343; 
}


button:hover {
  opacity: 0.8;
}
</style>
</head>
<body>
	<div class="all">
		<div class="left">
			<header></header>
		</div>
		<div class="right">
			<c:choose>
				<c:when test="${not empty member}">
					<c:forEach var="member" items="${member}">
						<form name="change_pw" id="change_pw" method="post" action="${pageContext.request.contextPath}/my_page/editPassword.my">
							<fieldset>
								<legend>비밀번호 변경</legend>
								<input type="hidden" name="userid" id="userid" value="${member.userid}">
								<input type="hidden" name="userpw" id="userpw" value="${member.userpw}">
								<div>
									<label for="new_userpw">새로운 비밀번호</label>
									<input type="password" name="new_userpw" id="new_userpw">
								</div>
								<hr>
								<div>
									<label for="new_userpwre">비밀번호 확인</label>
									<input type="password" name="new_userpwre" id="new_userpwre">
								</div>
								<hr>
								<div class="input_group" align="right">
									<input type="submit" name="button" value="완료"/>
									<input type="button" name="button2" value="취소" style="margin-left: 20px" onclick="location.href='${pageContext.request.contextPath}/MyPage.my'"/>
								</div>
							</fieldset>		
						</form>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<p>회원 정보가 없습니다.</p>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<script src="/header.js"></script>
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="regex.js"></script>
	<script>
		$(function() {
			$("#change_pw").submit(function(e) {
				e.preventDefault();
				if (!regex.value('#new_userpw', '비밀번호를 입력하세요.')) { return false; }
				if (!regex.min_length('#new_userpw', 4, '비밀번호는 최소 4자 이상 입력 가능합니다.')) { return false; }
				if (!regex.max_length('#new_userpw', 20, '비밀번호는 최대 20자 까지만 입력 가능합니다.')) { return false; }
				if (!regex.compare_to('#new_userpw', '#new_userpwre', '비밀번호를 확인해주세요.')) { return false; }
				alert("수정 완료했습니다.");
			});
		});
		
		function editPassword(userid, new_userpw){
			
			var new_userpw_value = $("#new_userpw").val();
			var new_userpwre_value = $("#new_userpwre").val();
			
			if (new_userpw_value == new_userpwre_value) {
					document.change_pw.action = "${pageContext.request.contextPath }/my_page/editPassword.my?userid="
							+ userid;
					document.change_pw.submit();
				}

			}
</script>


</body>
</html>