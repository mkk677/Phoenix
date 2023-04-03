<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		margin:0 auto;
		width: 80%;
	}
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
	#title{
		height: 50px;
	}
	#board{
		width:	98%;
		height:	300px;
		resize: none;
	}
	#url-input{
		height: 50px;
	}
	/* 파일 */
	.filebox .upload-name {
	    display: inline-block;
	    height: 40px;
	    padding: 0 10px;
	    vertical-align: middle;
	    border: 1px solid #dddddd;
	    width: 90%;
	    color: #999999;
	}
	.filebox label {
		margin-top: 10px;
		display:inline-block;
		width: 60px;
		background-color: #434343;
		color: white;
		padding: 5px 5px;
		border: none;
		cursor: pointer;
		margin-left: 10px;
		margin-right: 10px;
		margin: 8px auto;
	}
	.filebox input[type="file"] {
	    position: absolute;
	    width: 0;
	    height: 0;
	    padding: 0;
	    overflow: hidden;
	    border: 0;
	}
	
	/* 저장 버튼 */
	button.save{
		margin-top: 10px;
		display:inline-block;
		width: 60px;
		background-color: #434343;
		color: white;
		padding: 5px 5px;
		border: none;
		cursor: pointer;
		margin-left: 10px;
		margin-right: 10px;
		display: block;
		margin: 8px auto;
	}
	
	/* 텍스트 */
	input[type=text] ,textarea{
		background-color:#00ff0000;
		width: 98%;
		border: none;
		font-size: 15px;
		outline:none;
	}

</style>
</head>
<body>
	<div class="all">
		<div class = "left">
			<header ></header>
		</div>
		
		<div class = "right" >
			<div>
				<form method="post" name="boardForm">
					<table style="width: 900px; border: 0px;">
						<tr align="center" valign="middle">
							<td><h1>이력서</h1></td>
						</tr>
					</table>
					<table border="1" style="border-collapse:collapse;background-color:white;">
						<!-- 이름 -->
						<tr height="50px">
							<td>
								<input type="text" id="title" placeholder="이름">
							</td>
						</tr>
						<!-- 생년월일 -->
                        <tr height="50px">
							<td>
								<input type="text" id="title" placeholder="생년월일 ex) 19900101">
							</td>
						</tr>
						<!-- 성별 -->
                        <tr height="50px">
							<td>
								<input type="text" id="title" placeholder="성별 (남 or 여)">
							</td>
						</tr>
						<!-- 연락처 -->
                        <tr height="50px">
							<td>
								<input type="text" id="title" placeholder="연락처">
							</td>
						</tr>
						<!-- 주소 -->
                        <tr height="50px">
							<td>
								<input type="text" id="title" placeholder="주소">
							</td>
						</tr>
						<!-- 이메일 -->
                        <tr height="50px">
							<td>
								<input type="text" id="title" placeholder="이메일">
							</td>
						</tr>
						<!-- 최종학력 -->
                        <tr height="50px">
							<td>
								<input type="text" id="title" placeholder="최종학력">
							</td>
						</tr>
						<!-- 학교명 -->
                        <tr height="50px">
							<td>
								<input type="text" id="title" placeholder="학교명">
							</td>
						</tr>
						<!-- 전공 -->
                        <tr height="50px">
							<td>
								<input type="text" id="title" placeholder="전공">
							</td>
						</tr>
						<!-- 재학기간 -->
                        <tr height="50px">
							<td>
								<input type="text" id="title" placeholder="재학기간">
							</td>
						</tr>
						<!-- 경력사항 및 자격증 -->
						<tr height="100px">
							<td>
								<textarea id="board" placeholder="경력사항 및 자격증"></textarea>					
							</td>
						</tr>
						<!-- 기타사항 -->
						<tr>
							<td class="form-group">
								<input type="text" id="title" placeholder="기타사항">
							</td>
						</tr>
					</table>
					<!-- 저장 -->
					<button class="save" id="save" >저장</button>
				</form>
			</div>
		</div>
	</div>
</body>
	<script src="../header.js"></script>
</html>