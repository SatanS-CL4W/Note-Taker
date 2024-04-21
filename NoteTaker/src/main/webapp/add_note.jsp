<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="material.jsp"%>
<br>
<h1>Fill Your Note Details !!!</h1>
<br>

<title>Add Note</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>

	<form action="SaveNoteServlet" method="post">
		<div class="mb-3">
			<label for="title" class="form-label">Note Title</label> 
			<input
				type="text" name= "title" class="form-control" id="title"
				aria-describedby="emailHelp" placeholder="Enter Notes Here" required>
		</div>

		<div class="mb-3">
			<label for="content" class="form-label">Note Content</label>
			<textarea id="content" name="content" placeholder="Enter Your Notes Here"
				class="form-control" style="height: 250px;" required></textarea>
		</div>
		<div class="container text-center">
			<button type="submit" class="btn btn-primary">Add</button>

		</div>
	</form>

</body>
</html>