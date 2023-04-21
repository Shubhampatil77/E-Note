<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
UserDetails user2 = (UserDetails) session.getAttribute("userD");

if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error","Please Login.....");
}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="ali_component/alicss.jsp"%>

</head>
<body>

<div class="container-fluid">
<%@include file="ali_component/navbar.jsp"%>
<div class="container10">
        <marquee behavior="" direction=""><b>Welcome to Home Page</b></marquee>
    </div>
<div class="card py-10">
<div class="card-body text-center">
<img alts=" " src="img/note.png" class="img-fluid mx-auto" style="max-width:500px;">

<h1>START TAKING YOUR NOTES</h1>
<button>
<a href="addnotes.jsp " class="btn btn-out-outline-secondary">Start Here</a></button>
</div>
</div>
<%@include file="ali_component/footer.jsp" %>
</body>
</html>