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
		// 核心函数2：$(html)，将html转换成jQuery对象
		var mydiv = $("<div id='abc'>你好，jQuery!</div>");
		// 获取jQuery对象中的内容, 相当于dom对象的innerHTML属性
		//alert( mydiv.html() );
		
		// 核心函数3：$(selector),根据选择器查找元素
		//alert( $("#imceng").html() ); // ID选择器，根据id属性查找
		//alert( $(".ceng").html() ); // 类选择器，根据标签的class属性查找
		alert( $("div").html() ); // 标签选择器，根据标签的名称属性查找
	});
	
	// 阻止ready事件的执行
	//jQuery.holdReady(true);
</script>
</head>
<body>
	<div id="imceng" class="ceng" onclick="jQuery.holdReady(false);">我是层！</div>
</body>
</html>