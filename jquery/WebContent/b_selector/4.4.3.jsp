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
	
		//设置table所有“可见的行”背景为灰色，并显示不完全隐藏的行
		$("tr:visible").css("background", "gray")
		.show() // 该方法是将元素的display属性修改为默认值
		.css("visibility", "visible")
		;
		
		//设置table所有“隐藏的行”字体为红色，并显示隐藏的行
		$("tr:hidden").css("color", "red").show();
		
		//设置隐藏域的值为itcast，并输出隐藏域中的值
		alert( $("input:hidden").val("itcast").show().val() );
		
		
	});
</script>
</head>
<body>
	<style>table,td,th{border:1px solid black;border-collapse:collapse;}</style>
	<table width="600px">
		<tr><th>商品编号</th><th>商品名称</th><th>售价</th><th>数量</th></tr>
		<tr style="display:none;"><td>001</td><td>冰箱</td><td>3000</td><td>100</td></tr>
		<tr><td>002</td><td>洗衣机</td><td>2000</td><td>50</td></tr>
		<tr style="visibility:hidden;"><td>003</td><td>热水器</td><td>1500</td><td>20</td></tr>
		<tr><td>004</td><td>手机</td><td>2188</td><td>200</td></tr>
	</table>
	<input type="hidden" />

</body>
</html>