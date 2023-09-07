<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script2.jsp</title>
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
<h1>Event Bubble</h1>
<ol id="lang">
	<li>java</li>
	<li>python</li>
	<li>sql</li>

</ol>

<script type="text/javascript">
 lang.onclick = function(e){
	 console.log(this);       //this는 lang
 }
 for(let li of lang.children){
	 li.onclick = function(){
		 console.log(this.innerText);  //this는 li
	 }
 }
 
 document.body.onclick = function(){
	console.log("body click...");	 
 }
 //onclick 이벤트가 부모 자식에게 모두 있을 때는 자식에게 onclick하면 부모까지 전부 onclick 이벤트 발생한다 (버블)
 document.documentElement.onclick = function(){
	 console.log("html click...")
 }
 </script>
</body>
</html>