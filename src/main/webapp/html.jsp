<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- HTML5라는 버전표시 -->
<!doctype html>  


<html lang="ko">
<head>
<meta charset="UTF-8">
	<title>html.jsp</title>
	<link rel="icon" type="image/png" href="/favicon.png">
<!-- 	<base href="/img/">   경로에 기본적으로 추가함, 실행되면 그림경로가 바뀌므로 그림 안나옴 -->
	<style type="text/css"></style>
	<script type="text/javascript">
	window.onload = function(){
		let html = document.documentElement;
		let head = document.head;
// 		let title = document.title;
		let body = document.body;
		
		html.style.border='10px solid red';
		document.title = "xxx.jsp";
		
		body.style.border = '10px solid green';  // ""사용도 되고..''도 되고.. ; 있어도 되고 없어도 되고
		
	}
	</script>
	<link>
</head>
<body>
<h1>HTML5문서</h1>
<img alt="xxx" src="img/bill.jpg" width="200">
<hr>
<img alt="xxx" src="img/steve.jpg" height="200">

</body>





</html>