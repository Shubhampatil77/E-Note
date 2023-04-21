<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ page import="com.Db.*, java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/e.jpeg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<meta charset="UTF-8">
<title>Home Page</title>
<%@include file="ali_component/alicss.jsp"%>
</head>
<body>
	<%@include file="ali_component/navbar.jsp"%>	
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-red">Notes-Save Your Notes</h1>
			<a href="login.jsp" class="btn btn-light">Login</a> <a
				href="reg1.jsp" class="btn btn-light">Register</a>
		</div>
	</div>
	<%@include file="ali_component/footer.jsp"%>
</body>
</html>