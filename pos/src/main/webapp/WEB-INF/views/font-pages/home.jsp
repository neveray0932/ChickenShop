<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<!-- <link rel="stylesheet" href="./css/mycss.css"> -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<style>
.box {
	display: inline-block;
}
#navbarNav {
            position: relative;
            margin: 0 150px 0 -150px;
        }
</style>

</head>

<body>

	<nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark">
<!-- 	<nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark" -->
		style="width: 80%; margin: auto;">

	<div class="collapse navbar-collapse" id="navbarNav">
		<a class="navbar-brand" href="<c:url value="/pages/home.page"/>">
			<img src="../img/LOGO.png" alt="logo" width="50px">雞排點餐系統
		</a>

		<ul class="navbar-nav ">
			<li class="nav-item active"><a class="nav-link"
				href="<c:url value="/pages/menu.page"/>"> <span class="sr-only">餐點菜單</span>
			</a></li>

		</ul>

		<ul class="navbar-nav ms-auto" >
			<li class="nav-item"><a class="nav-link" href="">後台登入</a></li>

			<li class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">購物車</button>

				<div class="dropdown-menu " id="">
					<label class="dropdown-item" for="" id="a"></label> <label
						class="dropdown-item" for="" id="b"></label> <label
						class="dropdown-item" for="" id="c"></label> <a
						href="<c:url value="/pages/shopcar.page"/>   "><button
							id="gotocart">前往結帳</button> </a>
				</div>

			</li>
		</ul>

	</div>

	</nav>
<!-- 	 </nav> -->

	<div id="index_intro"
		style="text-align: center; width: 80%; margin: auto;">


		<div class="container container-background">


			<div class="box border-color">

				<div class="warpper">
					<p>【春季優惠 外送消費滿 $800 即贈香香炸雞中份乙份】</p>
					<p>
						◎ 結帳時請勾選優惠，折扣不累加，不可併用。<br>雙北及桃園區預配合Lalamove外送
					</p>
				</div>
			</div>

			<div class="box border-color">
				<div class="warpper">
					<p>【外送服務】</p>
					<p>
						◎ 運費49元起，實際金額請依系統判定為準。<br>雙北及桃園區預配合Lalamove外送，其他門市目前僅提供自取服務。
					</p>
				</div>
			</div>

			<div class="box border-color">
				<div class="warpper">
					<p>【自取】自取訂單達$500，即享單次50元折扣。</p>
					<p>
						◎ 結帳時請勾選優惠，優惠不累計，不併用。<br>取餐處請見「店面資訊」，並於訂購時選擇分店
					</p>
				</div>
			</div>
		</div>


		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel" style="margin: auto; width: 1200px;">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="../img/indeximg1.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="../img/indeximg2.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="../img/indeximg3.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="../img/indeximg4.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="../img/indeximg5.jpg" class="d-block w-100" alt="...">
				</div>
			</div>

			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>

			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

	</div>

</body>

</html>