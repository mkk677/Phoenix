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
			<form name="" name="change_pw" id="change_pw">
				<fieldset>
					<legend>Edit Password</legend>
					<div>
						<label>Last Password</label>
						<input type="password" name="userpw" id="userpw">
					</div>
					<hr>
					<div>
						<label>New Password</label>
						<input type="password" name="new_userpw" id="new_userpw">
					</div>
					<hr>
					<div>
						<label>Re-enter password</label>
						<input type="password" name="new_userpwre" id="new_userpwre">
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

        /** 비밀번호 검사 */
        if (!regex.value('#userpw', '비밀번호를 입력하세요.')) { return false; }
        if (!regex.min_length('#userpw', 4, '비밀번호는 최소 4자 이상 입력 가능합니다.')) { return false; }
        if (!regex.max_length('#userpw', 20, '비밀번호는 최대 20자 까지만 입력 가능합니다.')) { return false; }
        if (!regex.compare_to('#userpw', '#userpwre', '비밀번호를 확인해주세요')) { return false; }


        // 처리 완료
        alert("수정완료!!");
    });
});
	
	
	
</script>

</html>
</body>
</html>