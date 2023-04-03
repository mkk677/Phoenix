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
							<td><h1>포토폴리오</h1></td>
						</tr>
					</table>
					<table border="1" style="border-collapse:collapse;background-color:white;">
						<!-- 제목 -->
						<tr height="50px">
							<td>
								<input type="text" id="title" placeholder="  제목">
							</td>
						</tr>
						<!-- 내용 -->
						<tr height="300px">
							<td>
								<textarea id="board" placeholder="  내용"></textarea>					
							</td>
						</tr>
						<!-- 링크 -->
						<tr>
							<td class="form-group" >
								<input type="text" id="url-input" placeholder="  URL 추가">
							</td>
						</tr>
						<!-- 이미지 -->
						<tr>
							<td>
								<div id="image_container" ></div>
								<div class="filebox" style="display: flex; padding-right : 5px;">
								    <input class="upload-name" placeholder="첨부파일" style="border: none;">
								    <label for="file" style="padding-left: 14px;">파일찾기</label> 
								    <input type="file" id="file" onchange="setThumbnail(event);" > 
								</div>
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
	<!-- 이미지 미리보기, 파일명 출력 -->
	<script src="./file_path.js"></script>
</html>