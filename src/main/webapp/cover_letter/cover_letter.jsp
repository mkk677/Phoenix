<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style >

/*선택시 박스표시 없앰*/
*:focus {
    outline: 0;
}

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
	display: block;
	justify-content: center;
	align-content: center;
	
}


/* 	display: flex; */
/* 	justify-content: center; */
/* 	align-items: center; */

button.add , button.save{
	margin-top: 10px;
	display:inline-block;
	width: 60px;
	background-color: #434343;
	color: white;
	padding: 5px 5px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	margin-left: 10px;
	margin-right: 10px;
}

table, tr, th, td { border:1px solid #43434350; border-collapse:collapse; }
table {
	width: 80%;
	height: 300px;
	background-color: #ffffff;
	margin: auto;
	margin-top: 30px;
};

tr.row1{
	height: 10%;
}
tr.row2{
	height: 90%;
}

td.col1{
	width: 95%;
}
td.col2{
	width: 5%;
}

button.X {
	width: 100%;
	height: 100%;
	background-color:#00ff0000;
	border: none;
	font-size: 30px;
	color: #43434360;
}

input[type=text] ,textarea{
	background-color:#00ff0000;
	width: 98%;
	height: 98%;
	border: none;
	font-size: 15px;
	font-family: 'Gowun Batang';
}



</style>

</head>
<body>
	<div class = "all">
		<div class = "left">
			<header ></header>
		</div>
		
		<div class = "right" id="right" align="center">
			<div class="content" id="content">
			<h1 style="font-family: 'Gowun Batang';">자기소개서</h1>
			<!--
				<table border="1">
					<tr class="row1">
						<td class="col1">
							<input type="text" class="item" placeholder="항목 입력">
						</td>
						<td class="col2"> <button class="X">×</button> </td>
					</tr>
					<tr class="row2">
						<td colspan="2">
							<textarea maxlength="500" placeholder="자기소개 입력" style="resize: none;"></textarea>
						</td>
					</tr>
				</table>
			-->
			
			</div>
			<button class="add" id="add" >추가</button>
			<button class="save" id="save" >저장</button>
		</div>
	</div>
</body>

	<script src="/header.js"></script>

	<script >
		var classes=["tbl1","tbl2"];
// 		id는 나중에 벡엔드할때 만들어서 가져오는 방식으로 하기
		var tbl = `<table border="1" class="`+ classes[0] +`" id="`+ classes[0] +`">
							<tr class="row1">
							<td class="col1">
								<input type="text" class="item" placeholder="항목 입력">
							</td>
							<td class="col2"> <button class="X" id="`+ classes[0] +`" onclick="del();">×</button> </td>
						</tr>
						<tr class="row2">
							<td colspan="2">
								<textarea maxlength="500" placeholder="자기소개 입력" style="resize: none;"></textarea>
							</td>
						</tr>
					</table>`;
		$("#add").click(function() {
			$("#content").append(tbl);
	  	});
		
		
		function del() {
			var element = document.getElementById(classes[0]);
		    element.parentNode.removeChild(element);
// 			alert("어거지로 구현함..");
		}
		
	</script>


</html>