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
		width:900px;
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
		width: 94%;
		height: 100px;
	}
	#url-input{
		width: 94%;
		height: 50px;
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
				<form method="post" name="boardForm" 
					action="${pageContext.request.contextPath}/board/BoardWriteOK.bo">
					<table style="width: 900px; border: 0px;">
						<tr align="center" valign="middle">
							<td><h3>포토폴리오</h3></td>
						</tr>
					</table>
					<table border="1" style="border-collapse:collapse;">
						<!-- 제목 -->
						<tr height="100px">
							<th align="center" width="150px">
								제 목
							</th>
							<td>
								<input type="text" id="title" name="title" required>
							</td>
						</tr>
						<!-- 내용 -->
						<tr height="300px">
							<th align="center" width="150px">
								내 용
							</th>
							<td>
								<textarea name="boardcontents" style="width:700px;height:250px;"></textarea>					
							</td>
						</tr>
						<!-- 링크 -->
						<tr>
							<th align="center" width="150px">
								URL 추가
							</th>
							<td class="form-group">
								<input type="text" id="url-input" name="url" required>
							</td>
						</tr>
						<!-- 이미지 -->
						<tr height="300px">
							<th align="center" width="150px">
								이미지 추가
							</th>
							<td class="form-group">
								<div id="image_container"></div>
								<input class="form-control form-control-user" type="file" name="product_image" id="product_image" onchange="setThumbnail(event);">
							</td>
						</tr>
					</table>
					<!-- 저장 -->
					<table style="border: 0px;">
						<tr align="right" valign="middle">
							<td>
								<a href="http://localhost:8081/portfolio/portfolio.jsp">[저장]</a>
								&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
<script src="../header.js"></script>
<script>
//이미지 미리보기
	function setThumbnail(event){
		var reader = new FileReader();
			
		reader.onload = function(event){
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			img.setAttribute("class", "col-lg-6");
			document.querySelector("div#image_container").appendChild(img);
		};
			
		reader.readAsDataURL(event.target.files[0]);
	}
</script>
</html>