<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름 변경</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
.divideline{
    margin-top: 30px;
    padding-top: 0;
    font-size: 18px;
}
.view_table{
    border-top: 1px solid black;
    border-bottom: 1px solid black;
    table-layout: fixed;
    width: 100%;
    border-spacing: 0;
}
.modi_username{
	margin-left: 220px; 
}
</style>
</head>
<body>
<form action="MyPage.jsp" name="change_name" id="change_name">
	<div class="modi_username">
		<div class="modi_mypage_title">
			<h3>이름 변경</h3>
		</div>
		<div class="divideline">
			<h4>이름 변경</h4>
		</div>
		<div>
			<table class="view_table">
				<tr>
					<th>변경 전 이름</th>
					<td>홍길동</td>
				</tr>
				<tr>
					<th>변경 후 이름</th>
					<td><input id="ch_name" type="text" maxlength="30" style="width: 370;">
					</td>
				</tr>
			</table>
		</div>
	    <div class="divideline">
       		<button type="button" class="btn btn-light btn-lg" onclick="location.href='MyPage.jsp'">취소</button>
			<button type="button" class="btn btn-secondary btn-lg" onclick="changename()">완료</button> 
	    </div>
	</div>
</form>
<script>
	function changename(){
		
		let frm = document.change_name;
		let ch_name = frm.ch_name;
		
		if (ch_name.value == ""){
			alert("변경할 이름을 입력해주세요.")
			ch_name.focus();
		return false;
			
		} else if(ch_name.value != ""){
		alert("이름 변경이 완료되었습니다.")

		return false;
		}
		
		frm.submit();
	}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>