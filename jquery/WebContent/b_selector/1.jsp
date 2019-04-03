<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 引入jQuery的js文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	$(function(){
		//第一1行
		var $div=$("div");
		         //第二行
		$div.hover(function(){
		//第三行
		$div.addClass("hover")
		},function(){
		//第四行
		$div.removeClass("hover")
		})
	})
</script>
</head>
<style type="text/css">
		.hover{
		background-color: blue;
		}
</style>
<body>
	<div id="div" style="width: 100px; height: 100px; border: solid 1px;"></div>
</body>
</html>