<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.DAO.PostDAO, com.Db.DBConnect"%>
<%@ page import="java.util.List"%>
<%@ page import="com.DAO.PostDAO, com.User.UserDetails, com.User.Post"%>
<%
UserDetails user3 = (UserDetails) session.getAttribute("userD");
//out.println(user3.getId());
if (user3 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login.....");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Notes</title>
<%@include file="ali_component/alicss.jsp"%>
</head>
<body>
	<%@include file="ali_component/navbar.jsp"%>

	<%
	String updateMsg = (String) session.getAttribute("updateMsg");
	if (updateMsg != null) {
	%>
	<div class="alert alert-danger" roles="alert"><%=updateMsg%></div>
	<%
	session.removeAttribute("updateMsg");
	}
	%>

	<%
	String wrongMsg = (String) session.getAttribute("wrongMsg");
	if (wrongMsg != null) {
	%>
	<div class="alert alert-danger" roles="alert"><%=wrongMsg%></div>
	<%
	session.removeAttribute("wrongMsg");
	}
	%>

	<div class="container">
		<h2 class="text-center">
			<b>All Notes</b>

		</h2>
		<div class="row">
			<div class="col-md-12">
				<%
				if (user3 != null) {
					PostDAO ob = new PostDAO(DBConnect.getConn());
					List<Post> post = ob.getData(user3.getId());
					for (Post po : post) {
				%>


				<div class="card mt-3">
					<img alt="" src="img/note.png" class="card-img-top mt-2 mx-auto"
						style="max-width: 100px;">
					<div class="card-body p-4">
						<h5 class="card-title"><%=po.getTitle()%></h5>
						<p><%=po.getContent()%></p>
						<p>
							<b class="text-success">Published by <%=user3.getName()%></b><br>
							<b class="text-primary"></b>
						</p>
						<p>
							<b class="text-success">Published Date <%=po.getPdate()%></b><br>
						</p>
						<a href="deleteServlet?note_id=<%=po.getId()%>"
							class="btn btn-danger">Delete</a> <a
							href="edit.jsp?note_id=<%=po.getId()%>" class="btn btn-primary">Edit</a>
					</div>
				</div>

				<%
				}
				}
				%>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
