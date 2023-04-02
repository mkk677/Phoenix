<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<style>

body {
font-family:'Poppins',sans-serif;
background:#f0f3f5;
font-size:14px;
}

.modi_mypage_title{
    display: flex;
    padding-top: 30px;
    justify-content: center;
    border-bottom: 2px solid #1111;
}
.modi_username{
	margin-left: 220px; 
}

.divideline{
    margin-top: 30px;
    padding-top: 0;
    font-size: 18px;
    justify-content: center;
}
.view_table{
    border-top: 1px solid black;
    border-bottom: 1px solid black;
    table-layout: fixed;
    width: 100%;
    border-spacing: 0;
}

</style>
</head>
<body>
	<form action="MyPage.jsp" name="change_pw" id="change_pw">
		<div class="modi_username">
			<div class="modi_mypage_title">
				<h3>비밀번호 변경</h3>
			</div>
			<div class="modi_line">
				<div class="divideline">
					<h4>비밀번호 변경</h4>
				</div>
				<div>
					<table class="view_table">
						<tr>
							<th>현재 비밀번호</th>
							<td><input type="password" id="old_pw" maxlength="30" style="width: 370;"></td>
						</tr>
						<tr>
							<th>새로운 비밀번호</th>
							<td><input type="password" id="new_pw" maxlength="30" style="width: 370;">
							</td>
						</tr>
						<tr>
							<th>비밀번호 재확인</th>
							<td><input type="password" id="chk_pw" maxlength="30" style="width: 370;">
							</td>
						</tr>
					</table>
				</div>
			    <div class="divideline">
					<button type="button" class="btn btn-light btn-lg" onclick="location.href='MyPage.jsp'">취소</button>
					<button type="button" class="btn btn-secondary btn-lg" onclick="changepw()">완료</button>
			    </div>
			</div>    
		</div>
	</form>
	
<script>
 function changepw(){
	 
 	if (old_pw.value == ""){
 		
 		alert("기존 비밀번호를 입력해주세요.")
 		
 		return false;
 	}
 	
 	if (new_pw.value != chk_pw.value) {
 		
 		alert("새로운 비밀번호가 일치하지 않습니다.")
 		
 		return false;
 		
 	} else if (new_pw.value != chk_pw.value) {
 		
 		alert("비밀번호 변경이 완료되었습니다.")
 		
 	}
 	
 	
 	frm.submit();	
 }    
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
