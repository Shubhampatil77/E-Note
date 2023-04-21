<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="ali_component/alicss.jsp"%>
</head>
<body>
	<%@include file="ali_component/navbar.jsp"%>

	<div class="continer-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<div class="container10">
							<marquee behavior="" direction="">
								<b>Welcome to Home Page</b>
							</marquee>
						</div>
						<h4>Login Page</h4>
					</div>

					<%
					String invalidMsg = (String) session.getAttribute("login-failed");
					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" roles="alert"><%=invalidMsg%></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>
					<%
					String withoutLogin = (String) session.getAttribute("Login-error");
					if (withoutLogin != null) {
					%>
					<div class="alert alert-danger" roles="alert"><%=withoutLogin%></div>

					<%
					session.removeAttribute("Login-error");
					}
					%>
					<%
					String logMsg = (String) session.getAttribute("logoutMsg");
					if (logMsg != null) {
					%>
					<div class="alert-success" roles="alert"><%=logMsg%></div>

					<%
					session.removeAttribute("logoutMsg");
					}
					%>



					<div class="card-body">
						<form action="loginServlet" method="post">
							<label for="email">Enter Email</label><br> <input
								type="email" placeholder="Enter email" name="uemail"><br>
							<br> <label for="name">Enter Password</label><br> <input
								type="password" placeholder="Enter Password" name="upassword"><br>
							<br> 
							<input type="submit" class="btn btn-primary" value="Login" background-color="red">
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-dark mt-1">
		<p class="text-center text-white">Note: Any Error Occur then
			contact Shubham Desiged and Devloped by Shubham R Patil</p>

		<p class="text-center text-white">All Right Reserved
			@shubhampatil120301-2022-23</p>
		height:30px;

	</div>
</body>
</html>