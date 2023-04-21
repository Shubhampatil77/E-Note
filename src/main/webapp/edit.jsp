<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.DAO.PostDAO, com.User.UserDetails, com.User.Post"%>
	<%@ page import="com.DAO.PostDAO, com.Db.DBConnect"%>
	
	
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
<title>Edit Your Notes</title>
<%@include file="ali_component/alicss.jsp"%>

</head>
<body>
<%
Integer noteid=Integer.parseInt(request.getParameter("note_id"));
PostDAO post=new PostDAO(DBConnect.getConn());
Post p=post.getDataById(noteid);

%>

	<div class="container-fluid">
		<%@include file="ali_component/navbar.jsp"%>

		<h1 class="text-center">
			<b>Edit Your Notes</b>
		</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="NoteEditServletv" method="post">
					
						<input type="hidden" value="<%=noteid %>" name="noteid">
						<label for="fname">Edit Title:</label><br> <input
							type="text" id="fname" name="title" size="119"
							required="required" value=<%=p.getTitle()%>><br> <label for="lname">Enter
							Content</label><br>
						<textarea rows="15" cols="120" name="content" required="required"><%=p.getContent() %></textarea>

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