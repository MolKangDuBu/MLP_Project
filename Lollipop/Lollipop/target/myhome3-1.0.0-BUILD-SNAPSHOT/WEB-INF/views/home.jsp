<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<form action="/lollipop/upload" enctype="multipart/form-data" method="post">
			<input type="file" class="form-control" id="upload" name="upload"
				placeholder="이미지를 업로드하세요">
			<input type="submit" value="submit" />
		</form>
</body>
</html>
