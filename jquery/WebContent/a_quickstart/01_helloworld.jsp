<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 引入jQuery框架 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	// 当页面加载完成之后，alert弹出“Hello World!”
	window.onload = function() {
		alert("Hello World！-----------原生js方式111");
	};
	
	window.onload = function() {
		alert("Hello World！-----------原生js方式222");
	};
	
	//jQuery是一个工厂函数，任何对象传入这个函数，都被转换为jQuery对象
	jQuery(document)
	// jQuery对象，可以调用jQuery对象的属性或方法
	// jQuery中有一个ready方法，表示页面加载完成之后执行方法中的函数
	.ready(function() {
		alert("Hello World！-----------jQuery方式111");
	})
	.ready(function() {
		alert("Hello World！-----------jQuery方式222");
	});
</script>
</head>
<body>

</body>
</html>