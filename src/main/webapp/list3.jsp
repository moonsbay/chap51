<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list3.jsp</title>
<script type="text/javascript" src="js/list3.js"></script>
</head>
<body>
<h1>웹 애플리케이션 관련 기술</h1>
<hr>
<header>
<label for="tech">기술 </label>
<input id="tech" type="text">
<input id="front" type="radio" name="end" checked="checked"><sup>front</sup> <!-- 이름이 같아야 라디오 버튼 두개 동시에 선택 안됨, 첵크는 시작시 첵크상태옵션-->
<input id="back" type="radio" name="end"><sub>back</sub>
<button id ="btnAppend">추가</button>
</header>
<hr>
<ul>
	<li>
	   <h3>Front End</h3>
	   <ol id="frontList">
	   	  
	   </ol>
	</li>
	<li>
	   <h3>Back End</h3>
	   <ol id="backList">
	   	  
	   </ol>
	</li>
</ul>
</body>
</html>