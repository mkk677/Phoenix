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
	width: 80px;
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
			<form name="join_form" id="join_form">
				<fieldset>
					<legend >Join</legend>
					<div>
						<label>User Name</label>
						<input type="text" name="username" id="username">
						<input type="button" value="check" onclick=""> 
					</div>
					<hr>
					<div>
						<label>Password</label>
						<input type="password" name="userpw" id="userpw">
						
						<label class="re">Re-enter password</label>
						<input type="password" name="userpwre" id="userpwre">
					</div>
					<hr>
					
					<div>
						<label>E-mail</label>
						<input type="text" name="useremail" id="useremail" >
					</div>
					<hr>
					
					<div>
						<label>Phone</label>
						<input type="text" name="userphone" id="userphone">
					</div>
					<hr>
					
					<div class="input_group" align="right">
						<input type="submit" name="button" value="finish" />
						<input type="reset" name="button2" value="reset" style="margin-left: 20px"/>
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
    $("#join_form").submit(function(e) {
        // 기본동작 수행 방식
        e.preventDefault();

        /** 아이디 검사 */
        if (!regex.value('#username', '이름을 입력해주세요')) { return false; }
        if (!regex.eng_num('#username', '이름은 영어와 숫자만 입력 가능합니다')) { return false; }
        if (!regex.min_length('#username', 4, '이름은 최소4자이상 입력해주세요 ')) { return false; }
        if (!regex.max_length('#username', 20, '이름은 최대 10자 까지만 입력 가능합니다.')) { return false; }

        /** 비밀번호 검사 */
        if (!regex.value('#userpw', '비밀번호를 입력하세요.')) { return false; }
        if (!regex.min_length('#userpw', 4, '비밀번호는 최소 4자 이상 입력 가능합니다.')) { return false; }
        if (!regex.max_length('#userpw', 20, '비밀번호는 최대 20자 까지만 입력 가능합니다.')) { return false; }
        if (!regex.compare_to('#userpw', '#userpwre', '비밀번호를 확인해주세요')) { return false; }


        /** 이메일 검사 */
        if (!regex.value('#useremail', '이메일을 입력하세요.')) { return false; }
        if (!regex.email('#useremail', '이메일 주소가 잘못되었습니다.')) { return false; }

        /** 연락처 검사 */
        if (!regex.value('#userphone', '연락처를 입력하세요.')) { return false; }
        if (!regex.phone('#userphone', '연락처가 잘못되었습니다.')) { return false; }

        // 처리 완료
        alert("가입완료!!");
    });
});
	
	
	
</script>

</html>