<%@page import = "common.Crud" %>
<%@page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Workouts</title>
</head>
<body>

<div class="container-fluid text-center bg-dark text-white p-5" style="box-shadow: 0 3px 4px #000 !important;">
	<h4>Gym Management Dashboard v1.0</h4>
</div>

<div class="container mt-5">
	<div class="row">
		<div class="col-md-6 offset-3">
			<h4>All Current Workouts</h4>
			<table class="table table-bordered table-striped">
				<tr>
					<td>ID</td>
					<td>Type</td>
					<td>Level</td>
					<td>Duration</td>
					<td>Action</td>
				</tr>
			<% 
			
			 Crud crud = new Crud();
			 ArrayList<String> workouts = crud.FetchWorkouts();
			 if (workouts.size() > 0) {
				 for(String w : workouts) {
					 String[] output = w.split("</td>");
					 String id = output[0];
					 id = id.replace("<td>", "");
					 w += "<td><a href='/project/delete.jsp?id="+id+"'>Remove</a></td>";
					 out.println("<tr>" + w + "</tr>");
				 }
			 } else {
				 out.println("<tr><td colspan='4'>No available workouts to show.</td></tr>");
			 }
			%>
			</table>
			<a class="btn btn-dark" href="/project/view.jsp">&larr; Go back</a>
			
			<hr>
		</div>
	</div>
</div>


</body>
</html>