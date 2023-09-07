<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>heading.jsp</title>
<style type="text/css">
body{
	font-size : 30px
}

</style>
<script type="text/javascript">
function change(e){
	let value = document.querySelector('i');
	document.body.style.fontSize = e.target.value + "px";
	value.innerText = e.target.value ;
}
</script>
</head>
<body>
<header style="font-size:15px">
<!-- <input style="font-size:12px" type="range" min="1" max="50" onchange="change(event)">   클릭놓을때 적용-->
<input style="font-size:12px" type="range" min="1" max="50" oninput="change(event)">
<span><b><i></i></b><sub>px</sub><sup>px</sup>px</span>
<hr>
</header>

<ins><h1><i>Heading 1</i></h1></ins>
<h2><del>Heading 1</del></h2>
<h3>Heading 1♣</h3>
<h4>Heading 1<sub>♠</sub></h4>
<h5>Heading 1</h5>
<h6>Heading 1</h6>
</body>
</html>