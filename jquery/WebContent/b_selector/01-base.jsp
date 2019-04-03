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
		//获取页面中ID为foo的元素的内容
		//alert( $("#foo").html() );
		
		//通过each()遍历所有div，在每个div元素前 加入 “传智播客”
		// each中，i表示对象在循环中的索引，o表示当前对象
		$("div").each(function(i, o) {
			// this表示当前DOM对象！DOM对象！DOM对象！
			var oldhtml = $(this).html();
			$(this).html( "传智播客" + oldhtml );
		});
		
		/* $.each($("div"), function(i, o) {
			// this表示当前DOM对象！DOM对象！DOM对象！
			var oldhtml = $(this).html();
			$(this).html( "传智播客" + oldhtml );
		}); */
		
		//通过size() 或 length 打印页面中 class属性为 itcast 的元素数量
		//alert( $(".itcast").size() );
		//alert( $(".itcast").length );
		
		//获取class属性为itcast的div的个数
		alert( $("div.itcast").size() );
	});
</script>
</head>
<body>
	<div>DIVAAAA</div>
	<div class="itcast">DIVBBBB</div>
	<div>DIVCCCC</div>
	<div>DIVDDDD</div>
	<div class="itcast">DIVEEEE</div>
	<div id="foo">DIVFFFF</div>
	<p>PAAAA</p>
	<p class="itcast">PBBBB</p>
	<p>PCCCC</p>
</body>
</html>