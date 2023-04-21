<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");

if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error","Please Login.....");
}
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="ali_component/alicss.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="ali_component/navbar.jsp"%>

		<h1 class="text-center"><b>Add Your Notes</b></h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">
						<%
						UserDetails us = (UserDetails) session.getAttribute("userD");
						if (us != null) {
						%>
						<input type="hidden" value="<%=us.getId()%>" name="uid"><br>

						<%
						}
						%>
						<label for="fname">Enter Title:</label><br> <input
							type="text" id="fname" name="title" size="119"
							required="required"><br> <label for="lname">Enter
							Content</label><br>
						<textarea rows="15" cols="120" name="content" required="required"></textarea>

						<div class="contanier text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>

	<%@include file="ali_component/footer.jsp"%>

</body>
</html>