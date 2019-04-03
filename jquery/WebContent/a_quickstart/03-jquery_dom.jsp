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
		// DOM ===> jQuery
		var ceng = document.getElementById("imceng");
		//alert( ceng.innerHTML );
		var $ceng = $(ceng);
		//alert( $ceng.html() );
		try {
			//alert( ceng.html() );
		} catch (e) {
			//alert( e.message )
		} finally {
			//alert( "finally" );
		}
		
		//alert( $ceng.innerHTML );
		
		// jQuery ===> DOM
		//方式1：获取指定索引的DOM对象
		var ceng = $ceng[0];
		//alert( ceng.innerHTML );
		//方式2：获取指定索引的DOM对象
		var ceng = $ceng.get(0);
		//alert( ceng.innerHTML );
		// 方式3：返回DOM对象的数组
		var arr = $ceng.get();
		//alert( arr.innerHTML );
		alert( arr[0].innerHTML );
		
		// 方式1和方式2只能获取jQuery匹配的所有元素中的1个DOM对象
		// 因此1和2两种方式只适用于获取一个DOM对象的需求，获取多个DOM对象，使用方式3，
		// 需要注意的是，方式3返回的是DOM对象的数组
	});
</script>
</head>
<body>
	<div id="imceng" class="ceng">我是层！</div>
</body>
</html>