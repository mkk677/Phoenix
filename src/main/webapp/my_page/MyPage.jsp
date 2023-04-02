<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>

body {
font-family:'Poppins',sans-serif;
background:#f0f3f5;
font-size:14px;
}

.modi_mypage_title{ 
    display: flex; 
    padding-top: 30px; 
    justify-content: left; 
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

.view_table th{ 
    display: block; 
    padding: 10px 5px 5px; 
    text-align: left; 
    line-height: 20px; 
} 

.view_table td{ 
    display: block; 
    color: gray; 
    padding: 0 5px 10px; 
}


/* .modi_mypage_content{  */
/* 	margin-left: 220px;   */
/* }  */

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
	<div class="all">
		<div class = "left">
			<header ></header>
		</div>
		<div class = "right" >
			<div class="modi_mypage_content">
			    <form action="final.jsp" name="rejoin_form" id="rejoin_form">
			        <div class="modi_mypage_title">
			            <h3>회원정보 수정</h3>
			        </div>
			        <div class="divideline">
			            <h4>로그인 정보</h4>
			        </div>
			        <div>
			            <table class="view_table">
			                <tr>
			                    <th scope="row">아이디</th>
			                    <td colspan="2">test123</td>
			                </tr>
			                <tr>
			                    <th>비밀번호</th>
			                    <td> 
			                    	<button type="button" class="btn btn-secondary btn-sm" onclick="location.href='changepw.jsp'">비밀번호 변경</button>
			                    </td>
			                </tr>
			                <tr>
			                    <th>사용자 이름</th>
			                    <td>홍길동</td>
			                    <td> 
			                    	<button type="button" class="btn btn-secondary btn-sm" onclick="location.href='changename.jsp'">이름 변경</button>
			                    </td>
			                </tr>
			            </table>
			        </div>
			        <div class="divideline">
			            <h4>연락처 정보</h4>
			        </div>
			        <div>    
			            <table class="view_table">
			                <tr>
			                    <th>
			                        <label for="hp1">휴대전화번호</label>
			                    </th>
			                    <td> 
			                        <select name="hp1" id="hp1"> 
			                            <option>선택</option>
			                            <option value="010" selected> 010 </option>
			                            <option value="011"> 011 </option>
			                            <option value="013"> 013 </option>
			                            <option value="0130"> 0130 </option>
			                            <option value="016"> 016 </option>
			                            <option value="017"> 017 </option>
			                            <option value="018"> 018 </option>
			                            <option value="019"> 019 </option>
			                            <option value="0502"> 0502 </option>
			                            <option value="0505"> 0505 </option>
			                            <option value="0506"> 0506 </option>
			                        </select>
			                        <input type="tel" id="hp2" value="0000" maxlength="4" onkeyup="phonevali(event)"/>
			                        <input type="tel" id="hp3" value="0000" maxlength="4" onkeyup="phonevali(event)"/>        
			                    </td>
			                </tr>
			                <tr>
			                    <th>
			                        <label for="email">이메일</label>
			                    </th>
			                    <td> 
			                        <input type="text" id="email" value="abc" maxlength="30">
			                        <span>@</span>
			                        <input type="text" id="email2" disabled value="naver.com" maxlength="30">
			                        <select id="email3">
			                            <option value="naver.com" selected>naver.com</option>
			                            <option value="gmail.com">gmail.com</option>
			                            <option value="kakao.com">kakao.com</option>
			                            <option value="hanmail.net">hanmail.net</option>
			                            <option value="daum.net">daum.net</option>
			                            <option value="yahoo.com">yahoo.com</option>
			                            <option value="직접 입력" id="textEmail">직접 입력</option>
			                        </select>
			                    </td>
			                </tr>                
			                <tr>
			                    <th>
			                        주소
			                    </th>
			                    <td> 
			                        <input type="text" onclick="clickpostcode()" id="postcode" placeholder="우편번호" readonly>
									<input type="button" onclick="DaumPostcode()" value="우편번호 찾기"><br>
									<input type="text" onclick="clickpostcode()" id="address" placeholder="주소" readonly><br>
									<input type="text" id="detailAddress" placeholder="상세주소">
									<input type="text" onclick="clickpostcode()" id="extraAddress" placeholder="참고항목" readonly> 
			                    </td>
			                </tr>
			            </table> 
			        </div>          
			        <div class="divideline">
			        	<button type="reset" class="btn btn-light btn-lg">취소</button>
						<button type="button" class="btn btn-secondary btn-lg" onclick="sendit()">완료</button>
			        </div>
			    </form>
			</div> 
		  </div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>	     
<script src="/my_page/MyPage.js"></script>
<script src="/header.js"></script>
</body>

</html>