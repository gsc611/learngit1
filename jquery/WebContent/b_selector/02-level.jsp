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
		//将class属性值为itcast的元素下所有a元素字体变为红色
		$(".itcast a").css("color", "red");
		
		//将class属性值为itcast的元素下直接a元素字体变为蓝色
		$(".itcast > a").css("color", "blue");
		
		//将div元素后所有兄弟a元素，字体变为绿色，大小变为30px
		$("div ~ a").css({
			color: "green",
			// 属性名可以使用驼峰命名法：将连字符去掉，单词的首字母大小
			//fontSize: "50px"
			"font-size": 80 // 默认单位是px
		});
		
		//将div元素后紧跟着的那个兄弟a元素，背景色变为灰色的。
		//$("div+a").css("backgroundColor", "gray");
		$("div+a").css("background-color", "yellow");
		
		// 点击超链接，将字体的大小放大1.2倍，还可以做放大和缩小操作
		$("a").click(function() {
			// 函数的返回值作为要设置的属性的值，oldValue表示要设置的属性的原来的值，index表示索引
			/* $(this).css("fontSize", function(index, oldValue) {
				return parseFloat(oldValue) * 1.2;
			}); */
			
			$(this).css({
				fontSize: function(index, oldValue) {
					return parseFloat(oldValue) * 2;
				},
				color: function() {
					
				}
			});
		});
	});
</script>
</head>
<body>
	<div class="itcast">
		<a>div link</a>
		<p>
			info <a>p link</a>
		</p>
	</div>
	<a>link</a>
	<p class="itcast">
		<a>p link</a>
	</p>
	<a>link</a>
</body>
</html>