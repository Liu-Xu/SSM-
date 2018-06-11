<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE>
<html>
<head>
	<base href="<%=path%>/">
	<title>My JSP 'index.jsp' starting page</title>
</head>
<body>
	<form action="user/list" method="post">
		姓名:<input type="text" name="name" value="${user.name }" />
		性别:
		<select name="sex">
			<option value="">请选择</option>
			<c:if test="${user.sex == 'G'}">
				<option value="G" selected="selected">男</option>
				<option value="M">女</option>
			</c:if>
			<c:if test="${user.sex == 'M'}">
				<option value="G">男</option>
				<option value="M" selected="selected">女</option>
			</c:if>
			<c:if test="${empty user.sex}">
				<option value="G">男</option>
				<option value="M">女</option>
			</c:if>
		</select>
		<input type="submit" value="查询" />
	</form>
	<a href="user/toAdd">新增</a>
	<table border="1" style="width:300px">
		<tr>
			<td>姓名</td><td>年龄</td><td>性别</td><td>操作</td>
		</tr>
		<c:forEach items="${userList }" var="user">
		<tr>
			<td>${user.name }</td><td>${user.age }</td>
			<td>
				<c:if test="${user.sex == 'G'}">
					男
				</c:if>
				<c:if test="${user.sex == 'M'}">
					女
				</c:if>
			</td>
			<td>
				<a href="user/toEdit/${user.id }">修改</a>
				<a href="user/delete/${user.id }">删除</a>
			</td>
		</tr>
		</c:forEach>
	</table>
	<a href="user/list?pageNo=1&pageSize=${user.pageSize}">首页</a>
	<c:if test="${user.pageNo > 1}">
	<a href="user/list?pageNo=${user.pageNo - 1 }&pageSize=${user.pageSize}">上一页</a>
	</c:if>
	<c:if test="${user.pageNo < user.pageNum}">
	<a href="user/list?pageNo=${user.pageNo + 1 }&pageSize=${user.pageSize}">下一页</a>
	</c:if>
	<a href="user/list?pageNo=${user.pageNum }&pageSize=${user.pageSize}">末页</a>
	当前页：${user.pageNo }
	总页数：${user.pageNum }
	总记录数：${user.count }
</body>
</html>
