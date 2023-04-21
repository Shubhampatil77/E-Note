<%@ page import="com.User.UserDetails"%>

<nav class="navbar navbar-expand-sm navbar-dark bg-custom navbar-custom">
	<div class="container-fluid">
		<a class="navbar-brand" href="javascript:void(0)">E-Notes</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#mynavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="mynavbar">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="addnotes.jsp">Add Notes </a></li>
				<li class="nav-item"><a class="nav-link"
					href="shownotes.jsp">Show Notes</a></li>
			</ul>
			<%
			UserDetails user = (UserDetails) session.getAttribute("userD");
			if (user != null) {
			%>
			<form class="d-flex">
				<a href="#" class="btn btn-light me-2"
					onclick="document.getElementById('id01').style.display='block'"
					type="button"><%=user.getName()%></a> <a href="logoutServlet" class="btn btn-light my-2 my-sm-0 mr-2" type="button">Logout</a>
			</form>
			

			<div class="w3-container">

				<div id="id01" class="w3-modal w3-animate-opacity">
					<div class="w3-modal-content w3-card-4">
						<header class="w3-container w3-teal">
							<span
								onclick="document.getElementById('id01').style.display='none'"
								class="w3-button w3-large w3-display-topright">&times;</span>
							<h2>Modal Header</h2>
						</header>
						<div class="w3-container">
							<table class="table">
								<tbody>
									<tr>
										<th>User ID</th>
										<td><%=user.getId() %></td>
									</tr>
									<tr>
										<th>Full Name</th>
										<td><%=user.getName() %></td>
									</tr>
									<tr>
										<th>Email ID</th>
										<td><%=user.getEmail() %></td>
									</tr>
								</tbody>
							</table>
						</div>
						<footer class="w3-container w3-teal">
							
							<button type="button" class="btn btn-primary" data-dismiss="model"></button>
							<button type="button" class="btn btn-primary" data-dismiss="model"></button>
							
						</footer>
					</div>
				</div>
			</div>

			
			<%
			} else {
			%>
			<form class="d-flex">
				<a href="login.jsp" class="btn btn-light me-2" type="button">Login</a>
				<a href="reg1.jsp" class="btn btn-light my-2 my-sm-0 mr-2"
					type="button">Register</a>
			</form>
			<%
			}
			%>
		</div>

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		
		</html>

	</div>
</nav>
