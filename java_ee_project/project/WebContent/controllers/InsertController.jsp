<%@page import = "common.Crud" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Member Registration</title>
</head>
<body>

<div class="container mt-5">
	<div class="row">
		<div class="col-md-6 offset-3">
			<% 
			 String name = request.getParameter("name");
			 String email = request.getParameter("email");
			 String phone = request.getParameter("phone");
			 
			 Crud crud = new Crud();
			 boolean done = crud.InsertMember(name, email, phone);
			 if (done) { %>
				
				<script>
					window.location.href= "/project/view.jsp"; 
				</script>
			<% } else { %>
				<script>
					window.location.href= "/project/index.jsp"; 
				</script>
			<% } %>
			 
			<a class="btn btn-dark" href="/project/index.jsp">Go back</a>			
		</div>
	</div>
</div>


</body>
</html>