/**
 * 왼쪽 메뉴바 불러오는 코드
 * 
 * 바디 최상위에 <header ></header> 코드 추가해야함
 * 
 * 헤드안에 스타일도 넣어야함..ㅠ
 * 
 *
 * 
<div class = "left">
	<header ></header>
</div>

<div class = "right">
	만들 페이지코드
</div>
 * 
 * 
 * 
 */

 const header = document.querySelector('header');
		fetch('/menu/menu.html')
		.then(res => res.text())
		.then(data => header.innerHTML = data);