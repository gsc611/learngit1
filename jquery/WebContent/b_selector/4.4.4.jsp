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
		//对所有文本框和密码框添加离焦事件，校验输入内容不能为空
		$(":text,:password").blur(function() {
			// 一般非空校验都需要去除两端空格再校验，对于密码类字符不需要去空格
			var value = $.trim(this.value);
			if (value == "") {
				//this.focus(); // 让输入框获取焦点
				$(this).focus();
			}
		});
		// 表单输入框自动去空格
		/* $(":text,textarea").blur(function() {
			// 一般非空校验都需要去除两端空格再校验，对于密码类字符不需要去空格
			this.value = $.trim(this.value);
		}); */
		//对button按钮添加单击事件：提交form表单
		$(":button").click(function() {
			$("form").submit();
		});
	});
</script>
</head>
<body>
	<form action="regist" method="post" id="myform">
	<table border="1" style="border-collapse:collapse;">
		<tr height="26px">
			<td align="right" width="150px">用户名</td>
			<td><input type="text" name="username" /></td>
		</tr>
		<tr height="26px">
			<td align="right">密码</td>
			<td><input type="password" name="password" /></td>
		</tr>
		<tr height="26px">
			<td align="right">性别</td>
			<td>
				<input type="radio" name="sex" value="男" />男
				<input type="radio" name="sex" value="女" />女
			</td>
		</tr>
		<tr height="26px">
			<td align="right">城市</td>
			<td>
				<select name="city">
					<option value="北京">北京</option>
					<option value="上海">上海</option>
				</select>
			</td>
		</tr>
		<tr height="88px">
			<td align="right">个人简介</td>
			<td>
				<textarea rows="5" cols="60" name="introduce"></textarea>
			</td>
		</tr>
		<tr height="26px">
			<td align="right" colspan="2">
				<input type="button" value="提交" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>