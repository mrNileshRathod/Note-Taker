<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_css_js.jsp"%>
<title>Add Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Add Note</h1>

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input required name="title" type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter here your title">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required name="content"  id="content" placeholder="Enter here your content"
					class="form-control" style="height: 300px;"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
</body>
</html>