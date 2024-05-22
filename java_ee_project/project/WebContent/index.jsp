<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Welcome</title>
</head>
<body>

<div class="container-fluid text-center bg-dark text-white p-5" style="box-shadow: 0 3px 4px #000 !important;">
	<h4>Gym Management Dashboard v1.0</h4>
</div>


<div class="container mt-5">
	<div class="row">
		<div class="col-md-6 offset-3">
			<h4>Gym Member Registration</h4>
			<form action="controllers/InsertController.jsp">	
				Fullname: <input type="text" class="form-control" name="name" placeholder="e.g John Doe"/>
				Email: <input type="text" class="form-control" name="email" placeholder="e.g jdoe@gmail.com"/>
				Phone: <input type="text" class="form-control" name="phone" placeholder="e.g 298-322-2343"/>
				<hr>
				<button type="submit" class="btn btn-primary">Add Member</button>
			</form>			
			<hr>
			<a href="/project/view.jsp" class="btn btn-dark">View Members &rarr;</a>
		</div>
	</div>
</div>


</body>
</html>