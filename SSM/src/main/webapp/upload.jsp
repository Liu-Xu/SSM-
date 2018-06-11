<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE>
<html>
<head>
	<base href="<%=path%>/">
	<title>My JSP 'upload.jsp' starting page</title>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.form.js"></script>
</head>
<body>
	<img id="img1" />
	<form id="uploadForm">
		<input type="file" name="file1" onchange="uploadImg();" />
		<input type="hidden" name="filePath" id="filePath" />
	</form>
	
	<script type="text/javascript">
	function uploadImg() {
		var option = {
			type : "POST",
			url : "upload",
			dataType : "JSON",
			data : {
				fileName : "file1"
			},
			success : function(data) {
				var json = $.parseJSON(data);
				$("#img1").attr("src", json.filePath);
				$("#filePath").val(json.filePath);
			}
		};
		
		$("#uploadForm").ajaxSubmit(option);
	}
	</script>
</body>
</html>
