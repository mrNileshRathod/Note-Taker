<%@page import="com.helper.*, com.entities.*, org.hibernate.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_css_js.jsp"%>
<title>Edit Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">Update note</h1>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();

		Note note = s.get(Note.class, noteId);
		%>
		<form action="UpdateServlet" method="post">
			<input value="<%= note.getId()%>" name="noteId" type="hidden">
			<div class="form-group">
				<label for="title">Note Title</label> <input required name="title"
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" value="<%=note.getTitle()%>"
					placeholder="Enter here your title">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 300px;"><%=note.getContent()%>
				</textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Update</button>
			</div>
		</form>
	</div>
</body>
</html>