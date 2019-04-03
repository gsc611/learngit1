<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- 引入jQuery的js文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	// 核心函数1：页面加载完成事件
	jQuery(function($) {
	});
</script>
</head>
<body style="padding:0;margin:0;">
	<!-- div默认是一个块状元素（display:block），span默认是一个行内元素(display:inline) -->
	
	<!-- 块状元素会自动换行，而行内元素不会自动换行 -->
	<!-- <div style="border:1px solid red;">div</div>
	<br/>
	<span style="border:1px solid red;">span</span> -->
	
	<!-- 块状元素的宽度和高度可以指定，内联元素指定宽和高无效，其宽和高是根据元素中的内容来自动伸缩 -->
	<!-- <div style="border:1px solid red;width:100px;">div</div>
	<br/>
	<span style="border:1px solid red;width:100px;">span</span> -->
	
	<!-- 元素是块状或是行内块，或是行内元素，是由display属性决定的
	行内块的高度和宽度可以指定，并且不会自动换行
	-->
	<span style="border:1px solid red;width:100px;display:inline-block;">1</span>
	<span style="border:1px solid red;width:100px;display:inline-block;">2</span>
</body>
</html>