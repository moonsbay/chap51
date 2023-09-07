<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script4.jsp</title>
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
 
	for(let li of lang.children){
		li.onclick = function(){
			this.style.background='blue'
		}
	} 
 



 </script>
</body>
</html>