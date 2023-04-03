<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join</title>
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
	<div class = "all">
		<div class = "left">
			<header ></header>
		</div>
		<div class = "right" >
		<!-- html day10 form5 -->
			<form name="" name="change_name" id="change_name">
				<fieldset>
					<legend>Edit Name</legend>
					<div>
						<label>User Name</label>
						test123
					</div>
					<hr>
					<div>
						<label>New Name</label>
						<input type="text" name="username" id="username" readonly>
					</div>
					<hr>
					<div class="input_group" align="right">
						<input type="submit" name="button" value="finish" />
						<input type="button" name="button2" value="cancel" style="margin-left: 20px" onclick="location.href='MyPage.jsp'"/>
					</div>
				</fieldset>		
			</form>
		</div>
	</div>
</body>
<script src="/header.js"></script>
 <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!-- 정규표현식 검사 객체를 참조한다. -->
    <script src="regex.js"></script>
<script >
$(function() {
    /** 가입폼의 submit 이벤트 */
    $("#change_pw").submit(function(e) {
        // 기본동작 수행 방식
        e.preventDefault();

        /** 아이디 검사 */
        if (!regex.value('#username', '이름을 입력해주세요')) { return false; }
        if (!regex.eng_num('#username', '이름은 영어와 숫자만 입력 가능합니다')) { return false; }
        if (!regex.min_length('#username', 4, '이름은 최소4자이상 입력해주세요 ')) { return false; }
        if (!regex.max_length('#username', 20, '이름은 최대 10자 까지만 입력 가능합니다.')) { return false; }

        // 처리 완료
        alert("수정완료!!");
    });
});
	
	
	
</script>

</html>
</body>
</html>