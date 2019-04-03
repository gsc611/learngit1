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
		//设置表格第一行，字体颜色为红色，大小为20px
		$("table tr:first").css({
			"color": "red",
			fontSize: 20
		});
		
		//设置表格除标题行和第一行以外，字体颜色为蓝色，大小为20px
		$("tr:gt(1)").css({
			color: "blue",
			fontSize: 20
		});
		//设置表格奇数行，背景色为橙色
		$("tr:even").css("background", "orange");
		//设置表格偶数行，背景色为绿色
		$("tr:odd").css("background", "green");

		//设置所有标题，字体显示为紫色
		$(":header").css("color", "red");
		
		//设置表格最后一行，背景色为黄色
		$("tr:last").css("background","yellow");
		//动画效果演示
		/*
			让所有div立即隐藏
			让第一个div在1秒内显示出来
			2秒内让隐藏的div显示，显示的div隐藏
			3秒内让隐藏的div滑动显示，显示的div滑动隐藏
			4秒内让隐藏的div淡入，显示的div淡出
			5秒内同时让显示的div高度增加100px，宽度减小到80%，字体大小改成20px，动画完成之后延迟3秒，
		再把这个div在6秒内还原回去！还原完成后，给这个div添加单击事件：“让隐藏的div在3秒内匀速显示出来，
		设置正在执行动画的元素的背景为粉色，不执行动画的元素背景为橙色”。
		*/
		
		
	});
</script>
</head>
<body>
	<input>
	<h1>表格信息</h1>
	<h2>这是一张商品表</h2>
	<h200>这是一张商品22222表</h200>
	<style>table,td,th{border:1px solid black;border-collapse:collapse;}</style>
	<table width="600px">
		<tr><th>商品编号</th><th>商品名称</th><th>售价</th><th>数量</th></tr>
		<tr><td>001</td><td>冰箱</td><td>3000</td><td>100</td></tr>
		<tr><td>002</td><td>洗衣机</td><td>2000</td><td>50</td></tr>
		<tr><td>003</td><td>热水器</td><td>1500</td><td>20</td></tr>
		<tr><td>004</td><td>手机</td><td>2188</td><td>200</td></tr>
	</table><br/>
	<div style="border:1px solid black;">
		<b>slideDown(speed, [callback]) 概述</b><br/>
		通过高度变化（向下增大）来动态地显示所有匹配的元素，在显示完成后可选地触发一个回调函数。<br/>
		这个动画效果只调整元素的高度，可以使匹配的元素以“滑动”的方式显示出来。在jQuery1.3中，<br/>
		上下的padding和margin也会有动画，效果更流畅。 参数speedString,Number三种预定速度之一的字符串<br/>
		("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000)<br/> 
		callback (可选)FunctionFunction在动画完成时执行的函数<br/>
	</div><br/>
	<div style="border:1px solid black;">
		<b>fadeOut(speed, [callback]) 概述</b><br/>
		通过不透明度的变化来实现所有匹配元素的淡出效果，并在动画完成后可选地触发一个回调函数。<br/>
		这个动画只调整元素的不透明度，也就是说所有匹配的元素的高度和宽度不会发生变化。 参数<br/>
		speedString,Number三种预定速度之一的字符串("slow", "normal", or "fast")<br/>
		或表示动画时长的毫秒数值(如：1000) callback (可选)Function在动画完成时执行的函数<br/>
	</div>
</body>
</html>