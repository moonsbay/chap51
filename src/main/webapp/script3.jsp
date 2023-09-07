<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script3.jsp</title>
<style type="text/css">
ol{
border: 1px solid red;
}
li{
border: 1px solid blue;
}
</style>
</head>
<body>
<ol id="lang">
	<li>java</li>
	<li>python</li>
	<li>sql</li>

</ol>

<script type="text/javascript">
 lang.onclick = function(e){
	 console.log(this);       //this는 lang
	 let li = e.target;          //부모 lang에 자식 li 설정해놓으면 li에서 onclick해도 lang까지 이벤트발생
	 li.style.background = "red";
 }
 



 </script>
</body>
</html>