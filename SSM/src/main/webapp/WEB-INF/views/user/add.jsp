<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE>
<html>
<head>
	<base href="<%=path%>/">
	<title>My JSP 'add.jsp' starting page</title>
</head>
<body>
	<form action="user/insert" method="post">
		姓名:<input type="text" name="name" /><br />
		年龄:<input type="text" name="age" /><br />
		性别:<input type="radio" name="sex" value="G" checked="checked" />男
		    <input type="radio" name="sex" value="M" />女<br />
		<input type="submit" value="提交" />
	</form>
</body>
</html>
