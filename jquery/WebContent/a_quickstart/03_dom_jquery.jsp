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
		// DOM对象 ====> jQuery对象
		var mydiv = document.getElementById("mydiv");
		//alert( mydiv.innerHTML );
		//alert( mydiv.html() ); //mydiv.html is not a function
		var $mydiv = $(mydiv);
		//alert( $mydiv.html() );
		//alert( $mydiv.innerHTML ); // undefined，没有该属性
		
		// jQuery对象  ====> DOM对象
		// 方式1：jquery对象有可能匹配多个元素，例如$("div"),通过
		// 把jQuery作为一个数组来使用，然后获取数组中指定索引的DOM对中，只有1个
		// 此方式适用于jQuery中只匹配1个元素的jQuery对象，或者是只需要获取多个匹配元素中的某一个
		var mydiv = $("div")[1];
		//alert(mydiv.innerHTML);
		
		// 方式2：通过jQuery对象提供的get(index)方法来获取，同上！
		var mydiv = $("div").get(1);
		//alert(mydiv.innerHTML);
		
		// 方式3：通过jQuery对象提供的get()方法来获取，获取jQuery匹配的所有元素的DOM对象的数组！
		var divArr = $("div").get(); // DOM对象的数组
		alert(divArr.length); // 数组的长度
		alert(divArr[0].innerHTML); // 获取数组中某一个DOM对象，然后获取其中的内容
	});
</script>
</head>
<body>
	<div id="mydiv">我是层</div>
	<div id="mydiv2">我是层1111</div>
</body>
</html>