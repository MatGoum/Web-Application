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
<title>Member Modification</title>
</head>
<body>

<div class="container mt-5">
	<div class="row">
		<div class="col-md-6 offset-3">
			<% 
			 String id = request.getParameter("member_id");
			 String name = request.getParameter("member_name");
			 String email = request.getParameter("member_email");
			 String phone = request.getParameter("member_phone");
			 
			 Crud crud = new Crud();			 
			 boolean done = crud.EditMember(id, name, email, phone);
			%>
			<script>
				window.location.href= "/project/view.jsp"; 
			</script>						 		
		</div>
	</div>
</div>


</body>
</html>