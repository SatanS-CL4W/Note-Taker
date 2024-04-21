<!doctype html>
<html lang="en">
  <head>
    <%@include file="material.jsp" %>
    <title>Note Taker: Home Page</title>
  </head>
  <body>
   <div class="container-fluid p-0 m-0">
   		<%@include file="navbar.jsp" %>
		<br>
		
		<div class="card">
		<img alt="" class="img-fluid mx-auto" style="max-width:400px;" src="images/sticky-notes.png">
		<h1 class="text-primary text-uppercase text-center mt-3"> Start Taking Your Notes</h1>
		
		<div class="container text-center">
			<button class="btn btn-outline-primary text-center"><a href="add_note.jsp">Start Here</a></button>
		
		</div>
		
		</div>   		
   </div>   
   
    

  </body>
</html>