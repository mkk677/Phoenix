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
	#title{
		height: 50px;
	}
	#pcontents{
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
				<form method="post" name="boardForm" action="/portfolio/portfolio.pf">
					<table style="width: 900px; border: 0px;">
						<tr align="center" valign="middle">
							<td><h1>포트폴리오</h1></td>
						</tr>
					</table>
					<table border="1" style="border-collapse:collapse;background-color:white;">
						<!-- 제목 -->
						<tr height="50px">
							<td>
								<input type="text" id="ptitle" class = "ptitle" placeholder="  제목">
							</td>
						</tr>
						<!-- 내용 -->
						<tr height="300px">
							<td>
								<textarea id="pcontents" placeholder="  내용"></textarea>					
							</td>
						</tr>
						<!-- 링크 -->
						<tr>
							<td class="form-group" >
								<input type="text" id="purl" class="purl" placeholder="  URL 추가">
							</td>
						</tr>
						<!-- 이미지 -->
						<tr>
							<td>
								<div id="image_container" ></div>
								<div class="filebox" style="display: flex; padding-right : 5px;">
								    <input class="upload-name" placeholder="첨부파일" style="border: none;">
								    <label for="file" style="padding-left: 14px;">파일찾기</label> 
<!-- 								    https://m.blog.naver.com/whatacodingday/221844492754
										- 파일가져오기참고링크..?
 -->
								    <input type="file" id="file" class="file" onchange="setThumbnail(event);" accept="image/*" > 
								</div>
							</td>
						</tr>
					</table>
					<!-- 저장 -->
					<button class="save" id="save" type="button" onclick="savedb()">저장</button>
				</form>
			</div>
		</div>
	</div>
</body>
	<script src="../header.js"></script>
	<!-- 이미지 미리보기, 파일명 출력 -->
	<script src="./file_path.js"></script>
	
	
	<script >
			var pnum = <%=request.getParameter("pnum") %>;
		// 	alert(pnum);
		
			let xhr4 = new XMLHttpRequest();
			
			xhr4.open("POST","/portfolio/loadDBPF.jsp?pnum="+pnum,true);//tableNum 이 cnum임
			xhr4.send();
			xhr4.onreadystatechange = function(){
				if (xhr4.readyState == 4)  {
					var DB = xhr4.responseText.trim();
				    const status = xhr4.status;
				    if(status === 0 || (status >= 200 && status < 400)) {
				      console.log('success portfolio loadDB...');
				      var DB = xhr4.responseText.trim();
				      // /기준으로 각각 다른 포트폴리오
				      // & 기준으로 포트폴리오별 요소
				      console.log("==================DB :"+DB+"============");
				      tbDB = DB.split('/--/');
				      console.log("==================tbDB :"+tbDB+"============");
				      //Portfolio Title,Portfolio Content,http://example.com,/portfolio/imgs/ex.png
				      //title contents url path
						$('.ptitle').attr("value", tbDB[0]);
						document.getElementById('pcontents').textContent = tbDB[1];
						$('.purl').attr("value", tbDB[2]);
// 						$('.file').attr("value", tbDB[3]); // 첨부파일은 좀 알아봐야함
				      
// 					  makeDBtable(tbDB); //테이블 코드 생성
				    } else {
				      console.log('fail portfolio loadDB...');
				    }
				  }
			}

	function savedb(){	//num은 테이블 번호 즉 몇번째 테이블인지 - 0부터 시작
		var ptitle = document.getElementById('ptitle');
		var pcontents = document.getElementById('pcontents');
		var purl = document.getElementById('pcontents');
		
		let xhrs = new XMLHttpRequest();
		
		xhrs.open("POST","/portfolio/saveDB.jsp?ptitle="+ptitle.value+"&pcontents="+pcontents.value+"&purl="+purl.value,true);
		xhrs.send();
		xhrs.onreadystatechange = function(){
			if(xhrs.readyState == 4){
				if(xhrs.responseText.trim() == "ok"){
					alert("저장됨");
				}else{
					alert("저장실패");
				}
				
			}
		}
	}
	
	</script>
</html>