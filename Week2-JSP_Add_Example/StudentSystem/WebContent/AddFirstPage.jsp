<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加到数据库</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	<form action="AddControl.jsp" method="post">
		<table border="1" cellspacing="0">
			<tr><td>学号</td><td>姓名</td><td>性别</td></tr>
			<tr>
				<td><input type="text" name="id"></td>
				<td><input type="text" name="name"></td>
				<td><input type="text" name="gender"></td>
			</tr>
		</table>
			<input type="submit" value="添加">
	</form>
</body>
</html>