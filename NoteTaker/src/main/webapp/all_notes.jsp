<%@page import="org.hibernate.query.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Saved Notes</title>
<%@include file="material.jsp"%>

</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row">
			<div class="col-12"></div>
		</div>
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("FROM Note");
		List<Note> list = q.list();
		for (Note note : list) {
		%>
		<div class="container text-center card mt-3" >
			<div class="container text-center">
				<img class="card-img-top m-4 max-auto" style="max-width:100px;" src="images/pencil.png" >
				
			</div>
			<div class="card-body px-5">
				<h5 class="card-title"><%= note.getTitle() %></h5>
				<p class="card-text">
				<%= note.getContent() %></p>
				<div class="container text-center">
				<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-success">Edit</a>
				<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
				</div>
				
			</div>
		</div>

		<%
		}
		s.close();
		%>




	</div>


</body>
</html>
