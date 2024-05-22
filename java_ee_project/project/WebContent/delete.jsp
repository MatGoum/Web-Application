<%@page import = "common.Crud" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Workouts</title>
</head>
<body>
<%
	String id = request.getParameter("id");

	Crud crud = new Crud();
	boolean done = crud.RemoveWorkout(id);
	if (done) { %>
	
	<script>
		window.location.href= "/project/view.jsp"; 
	</script>
<% } else { %>
	<script>
		window.location.href= "/project/workouts.jsp"; 
	</script>
<% } %>
</body>
</html>