<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="en">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Login</title>
<!--     <link rel="stylesheet" type="text/css" href="./static/css/mycss.css" /> -->
<link rel="stylesheet" type="text/css" href="../css/mycss.css" />

<!--  -->
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>
<!-- jQuery -->
<script src="../Script/jquery-3.4.1.js"></script>
<style>
.bs-example {
	margin: 20px;
}
</style>
</head>

<body>

	<nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark">
		<a class="navbar-brand" href="<c:url value="/home.page" />">大專雞排戰隊</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarToggleExternalContent"
			aria-controls="navbarToggleExternalContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>

		</button>


		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="./g8/menu.html"><span class="sr-only">餐點菜單</span></a></li>
				<li class="nav-item"><a class="nav-link" href="./feature.jsp">特色</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">介紹</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#"
					tabindex="-1" aria-disabled="true">Disabled</a></li>
				<li class="dropdown">

					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">購物車</button>

					<div class="dropdown-menu">
						<label class="dropdown-item" for="">1</label> <label
							class="dropdown-item" for="">2</label> <label
							class="dropdown-item" for="">3</label> <label
							class="dropdown-item" for="">4</label>
					</div>

				</li>
			</ul>
		</div>

	</nav>

</body>
<script type="text/javascript">
	
</script>

</html>