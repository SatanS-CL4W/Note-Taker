<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="material.jsp"%>

</head>
<body>
   <div class="container-fluid p-0 m-0">
   		<%@include file="navbar.jsp" %>
   		   <h1>Edit Notes here:</h1>
   		   <br>
   		<%
   		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
   		Session s = FactoryProvider.getFactory().openSession();
   		Note note = (Note)s.get(Note.class, noteId);
   		%>
   		<form action="UpdateServlet" method="get">
   		
   		<input value="<%=note.getId()%>"  name="noteId" type="hidden">
   		
		<div class="mb-3">
			<label for="title" class="form-label">Note Title</label> 
			<input
				type="text" name= "title" class="form-control" id="title"
				aria-describedby="emailHelp" placeholder="Enter Notes Here" value= "<%=note.getTitle() %>" required>
		</div>

		<div class="mb-3">
			<label for="content" class="form-label">Note Content</label>
			<textarea id="content" name="content" placeholder="Enter Your Notes Here"
				class="form-control" style="height: 250px;" <%=note.getContent() %> required></textarea>
		</div>
		<div class="container text-center">
			<button type="submit" class="btn btn-success">Save Your Note</button>

		</div>
	</form>
   		
   </div>   

</body>
</html>