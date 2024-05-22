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
<title>Workout Registration</title>
</head>
<body>

<div class="container mt-5">
	<div class="row">
		<div class="col-md-6 offset-3">
			<% 
			 String type = request.getParameter("type");
			 String level = request.getParameter("level");
			 String duration = request.getParameter("duration");
			 String memberId = request.getParameter("memberId");
			 
			 Crud crud = new Crud();
			 boolean done = crud.InsertWorkout(type, level, duration, memberId);
			 if (done) { %>
				
				<script>
					window.location.href= "/project/workouts.jsp"; 
				</script>
			<% } else { %>
				<script>
					window.location.href= "/project/view.jsp"; 
				</script>
			<% } %>
			 
			%>
			<a class="btn btn-dark" href="/project/view.jsp">Go back</a>			
		</div>
	</div>
</div>


</body>
</html>