<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE>
<html>
<head>
	<base href="<%=path%>/">
	<title>My JSP 'edit.jsp' starting page</title>
</head>
<body>
	<form action="user/update" method="post">
		<input type="hidden" name="id" value="${user.id }" />
		姓名:<input type="text" name="name" value="${user.name }" /><br />
		年龄:<input type="text" name="age" value="${user.age }" /><br />
		性别:
			<c:if test="${user.sex == 'G'}">
			<input type="radio" name="sex" value="G" checked="checked" />男
		    <input type="radio" name="sex" value="M" />女<br />
			</c:if>
			<c:if test="${user.sex == 'M'}">
			<input type="radio" name="sex" value="G" />男
		    <input type="radio" name="sex" value="M" checked="checked" />女<br />
			</c:if>
		<input type="submit" value="提交" />
	</form>
</body>
</html>
