<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 引入jQuery框架 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	// jQuery核心函数1：$(callback);
	jQuery(function($) {
		//改变div中的内容为“传智播客”、获取div中的内容，分别使用传统js方式和jQuery方式
		// 传统js方式改变并获取DIV中的“内容”：html内容、文本内容
		var mydiv = document.getElementById("mydiv");
		// 所有浏览器都支持
		mydiv.innerHTML = "传智播客innerHTML";
		// 所有IE和新版本标准浏览器，老版本标准浏览器不支持innerText属性
		mydiv.innerText = "传智播客innerText";
		// 所有标准浏览器和新版本IE(9及以上)才支持
		mydiv.textContent = "传智播客textContent";
		// 为了解决兼容问题，通常innerText和textContent指定相同的内容
		mydiv.innerText = "传智播客";
		mydiv.textContent = "传智播客";
		// 连续赋值操作，执行顺序：从右往左执行
		mydiv.innerText = mydiv.textContent = "传智播客";
		
		/* html和text的区别？
		 * html会解析内容中html标签，而text会将给定的html内容原样显示在页面中
		 * 如果要使用html输出html内容，需要进行转义，例如如果要输出文本"&nbsp;",
		 * 需要进行转义："&amp;nbsp;"，比较麻烦，这种情况下可以使用text来完成！
		 * 在书写html参考文档时，使用text比较合适！
		 */
		// 让div显示<font color="red">如何改变文字的颜色</font>
		mydiv.innerHTML = '<font color="red">如何改变文字的颜色</font>';
		mydiv.innerHTML = '&lt;font color="red"&gt;如何改变文字的颜色&lt;/font&gt;';
		mydiv.innerText = '<font color="red">如何改变文字的颜色</font>';
		
		// jQuery方式改变和获取div的内容和文本
		// jQuery提供了针对html和文本的相应的方法，分别是html方法和text方法
		// 将指定的内容原样输出，使用text
		$("#mydiv").text("传智播客");
		// 让浏览器解析指定的html内容
		$("#mydiv").html('<font color="red">如何改变文字的颜色</font>');
		
		$("#mydiv").text('<font color="red">如何改变文字的颜色</font>');
		// jQuery在调用方法的时候，有个规律：给参数就是设置，不给参数就是获取
		alert(  $("#mydiv").text()  );
		//alert(  $("#mydiv").html()  );
	});
</script>
</head>
<body>
	<div id="mydiv"></div>
</body>
</html>