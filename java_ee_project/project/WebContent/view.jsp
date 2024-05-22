<%@page import = "java.util.*" %>
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
<title>Dashboard</title>
</head>
<body>

<div class="container-fluid text-center bg-dark text-white p-5" style="box-shadow: 0 3px 4px #000 !important;">
	<h4>Gym Management Dashboard v1.0</h4>
</div>

<div class="container mt-5">
	<div class="row">
		<div class="col-md-6 offset-3">
			<h4>All Current Members</h4>
			<table class="table table-bordered table-striped">
				<tr>
					<td>ID</td>
					<td>Name</td>
					<td>Email</td>
					<td>Phone</td>
					<td>Action</td>
				</tr>
			<% 
			
			 Crud crud = new Crud();
			 ArrayList<String> members = crud.FetchMembers();
			 if (members.size() > 0) {
				 for(String member : members) {
					 out.println("<tr>" + member + "</tr>");
				 }
			 } else {
				 out.println("<tr><td colspan='4'>No available members to show.</td></tr>");
			 }
			%>
			</table>
			<a class="btn btn-dark" href="/project/index.jsp">&larr; Go back</a>
			
			<hr>
			
			<h4>Add Workout</h4>
			<form action="controllers/InsertWorkoutController.jsp">	
				Type: <select name="type" class="form-control">
						<option value="1">Upper Body</option>
						<option value="2">Lower Body</option>
						<option value="3">Full Body</option>
					</select>
				Level:  <select name="level" class="form-control">
						<option value="1">Beginner</option>
						<option value="2">Intermediate</option>
						<option value="3">Advanced</option>
					</select>
				Duration: <input type="text" class="form-control" name="duration" placeholder="e.g 2 hours"/>
				
				<% 
				ArrayList<String> membersSelect = crud.FetchMembersData();
				if (membersSelect.size() > 0) { %>
					Assign to: <select name="memberId" class="form-control">
						<%
							for(String mb : membersSelect) {
								String[] output = mb.split("</td>");
								String mid = output[0];
								mid = mid.replace("<td>", "");
								out.println("<option value='"+mid+"'>" + output[2] + "</option>");
							}
						%>
					</select>
				<% } %>
				<hr>
				<button type="submit" class="btn btn-info">Add Workout</button>
			</form>	
			
			<hr>
			<a href="/project/workouts.jsp" class="btn btn-dark">View Workouts &rarr;</a>
		</div>
	</div>
</div>


</body>
</html>