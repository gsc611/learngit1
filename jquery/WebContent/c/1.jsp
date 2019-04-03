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
		$("<option>北京</option>").appendTo("select");
		$("<option>敦煌</option>").insertBefore("option[value=上海]");
	});
</script>
</head>
<body>
	<select>
		<option value="上海">上海</option>
	</select>
</body>
</html>