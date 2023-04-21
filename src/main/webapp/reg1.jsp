<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        <marquee behavior="" direction=""><b>Welcome to Registration Page</b></marquee>
    </div>
						<h4>Registration</h4>
					</div>

					<%
					String regMsg = (String) session.getAttribute("reg-success");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%>
						Login<a href="login.jsp">login Here</a>
					</div>
					<%
					session.removeAttribute("reg-sucess");
					}
					%>
					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");
					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=FailedMsg %>
					</div>
					<%
					session.removeAttribute("failed-msg");
					}
					%>
					<div class="card-body">
						<form action="UserServlet" method="post">
							<label for="name">Enter Name</label><br> <input type="text"
								placeholder="Enter Name" name="name"><br> <br>
							<label for="email">Enter Email</label><br> <input
								type="email" placeholder="Enter email" name="email"><br>
							<br> <label for="name">Enter Password</label><br> <input
								type="password" placeholder="Enter Password" name="password"><br>
							<br> <input type="submit" class="btn btn-primary"  value="Register"
								background-color="red">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<div class="container-fluid bg-dark mt-0">
<p class= "text-center text-white">Note: Any Error Occur then contact Shubham Desiged and Devloped by Shubham R Patil</p>

<p class= "text-center text-white">All Right Reserved @shubhampatil120301-2022-23</p>
		height:30px;

</div></body>

</html>