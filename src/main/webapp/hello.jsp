<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hello.jsp</title>

<script type="text/javascript">
window.onload = function(){
	let img = document.querySelector('img');
	let bill = document.querySelectorAll('button')[0];
	let steve = document.querySelectorAll('button')[1];
	
	bill.onclick = function(){
		img.src = 'img/bill.jpg';
	}
	steve.onclick = function(){
		
		img.src = 'img/steve.jpg';
		
	}
	
}
</script>
</head>
<h1>Img Tag</h1>
<hr>

<body>
<button>빌게이츠</button>
<button>스티브잡스</button>
<img alt="이미지 없을 때 보인다" src="img/bill.jpg" width="300">
</body>
</html>