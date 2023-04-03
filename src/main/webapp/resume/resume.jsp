<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
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
	div.i18{
		display: flex;
		justify-content: center;
		align-items: center;
		padding: 100px;
		}
	div.cont{
		display: inline;
	}
	div.innercont{
		display: inline-block;
		margin: 10px;
		width: 100%;
	}
	div.careerArea{
		display: inline-block; width: 80%
	}
	label{
	display: inline-block;
		width: 80px;
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
	input[type=button],input[type=submit],input[type=reset] ,button{
	display:inline-block;
	width: 70px;
	background-color: #434343;
	color: white;
	padding: 5px 5px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
}
	button.del{
		width: 35px;
		background-color: #00ff0000;
		border-color: #00ff0000;
		font-size: 20px;
	}
	
	/* 텍스트 */
	input[type=text] ,textarea{
		background-color:#00ff0000;
		width: 30%;
		border: none;
		font-size: 15px;
		outline:none;
		border-bottom: solid thin;
	}
	hr{
		margin-top: 30px;
		margin-bottom: 30px;
	}
	
</style>
</head>
<body>
	<div class="all">
		<div class = "left">
			<header ></header>
		</div>
		
		<div class = "right" >
			<div class = "i18">
				<form name="join_form" id="join_form" style="width: 70%;">
				<fieldset>
					<legend  style="font-size: 20px;" >이력서</legend>
					<div class = "cont">
						<div class="innercont">
							<label >이름</label>
							<input type="text" name="username" id="username">
						</div>
						<div class="innercont">
							<label>성별</label>
							<input type="text" name="username" id="username">
						</div>
						<div class="innercont">
							<label>연락처</label>
							<input type="text" name="username" id="username">
						</div>
						<div class="innercont">
							<label>주소</label>
							<input type="text" name="username" id="username" style="width: 50%;">
						</div>
						<div class="innercont">
							<label>이메일</label>
							<input type="text" name="username" id="username">
						</div>
						
					</div>
					<hr>
					<div class = "cont">
						<div class="innercont">
							<label>최종학력</label>
							<input type="text" name="username" id="username">
						</div>
						<div class="innercont">
							<label>학교명</label>
							<input type="text" name="username" id="username">
						</div>
						<div class="innercont">
							<label>전공</label>
							<input type="text" name="username" id="username">
						</div>
						<div class="innercont">
							<label>재학기간</label>
							<input type="text" name="username" id="username">
						</div>
					</div>
					<hr>
					
					<div class = "cont">
						<div class="innercont">

							<label style="display: flex; justify-content: center;align-items: center; width: 110px;">경력사항 및 자격증</label>
							<div class ="careerArea" id="careerArea" >
								<input type="text" class="career" name="career" id="career" style=" display:inline-block; width: 70%;">
								<button type="button" class="del" id="del" style="color: #434343;" onclick="del();" >×</button>
							</div>
							<button class="add" id="add" type="button">추가</button>
						</div>
						<div class="innercont">
							<label>기타사항</label>
							<textarea style="width: 70%;"></textarea>
						</div>
						
					</div>
					<hr>
					<div class="input_group" align="right">
						<input type="submit" name="save" value="저장"  class="save" id="save" />
						<input type="reset" name="button2" value="초기화" style="margin-left: 20px"/>
					</div>
				</fieldset>
			</form>
			</div>
		</div>
	</div>
</body>
	<script src="../header.js"></script>
	
	<script >
	//		id는 나중에 벡엔드할때 만들어서 가져오는 방식으로 하기
		var tbl = `<input type="text" class="career" name="career" id="career" style=" display:inline-block; width: 70%;">
			<button type="button" class="del" id="del" style="color: #434343;" onclick="del();">×</button>`;
		$("#add").click(function() {
			$("#careerArea").append(tbl);
	  	});
		
		
		function del() {
			//삭제 구현해야함
		}
	</script>
	
</html>