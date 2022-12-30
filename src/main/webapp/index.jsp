<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="all_css_js.jsp"%>
<title>Note Taker</title>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<div class="card py-5">
			<img alt="" class="img-fluid mx-auto" style="max-width: 400px;"
				src="images/pencil.png">
			<h1 class="teal text-uppercase text-center mt-3">Start
				taking your notes</h1>

			<div class="container text-center">
				<a href="add_notes.jsp"><button class="btn teal-bg">Start here</button></a>
			</div>
		</div>
	</div>
</body>
</html>