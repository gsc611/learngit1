<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- 引入jQuery的js文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	window.onload = function() {
		alert("hello world!-------------传统方式111~");
	};
	window.onload = function() {
		alert("hello world!-------------传统方式222~");
	};
	// jQuery的页面加载完成事件
	// jQuery是一个函数，这个函数可以接收任意类型的参数，
	//jQuery函数会将指定的参数转换为jQuery对象
	//jQuery(document)
	$(document)
	// jQuery对象中有一个ready方法，这个方法的意思是页面加载完成之后执行指定的回调函数
	.ready(function() {
		alert("hello world!-------------jq方式111~");
	})
	// jquery在调用方法之后，还返回原来的对象，因此可以链式操作
	.ready(function() {
		alert("hello world!-------------jq方式222~");
	})
	;
</script>
</head>
<body>

</body>
</html>