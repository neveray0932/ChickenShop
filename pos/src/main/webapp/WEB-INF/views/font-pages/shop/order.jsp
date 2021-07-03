<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Login</title>
<link rel="stylesheet" href="../css/mycss.css">
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
th, td {
	text-align: center;
}

.myfinal {
	margin-left: 40%;
}

.myfinal1 {
	text-align: center;
	font-family: "fantasy";
	font-size: 200%;
}

.myfinal2 {
	text-align: center;
	font-size: 250%;
}

.myfinal3 {
	text-align: center;
	font-size: 150%;
}

.myfinal4 {
	width: 80px;
	height: 80px;
	border-radius: 100px;
	background-color: #FAF0E4;
	margin-top: 30px;
}
</style>
</head>

<body>

	<div
		style="width: 1580px; height: 800px; background-color: white; margin: auto;">

		<nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark">
		<nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark"
			style="width: 80%; margin: auto;">

		<div class="collapse navbar-collapse" id="navbarNav">
			<a class="navbar-brand" href="<c:url value="/pages/home.page"/>">
				<img src="../img/LOGO.png" alt="logo" width="50px">雞排點餐系統
			</a>
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="<c:url value="/pages/menu.page"/>"><span class="sr-only">餐點菜單</span></a></li>
			</ul>
			<ul class="navbar-nav ms-auto">
				<li class="nav-item"><a class="nav-link" href="">註冊/登入</a></li>
				<li class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">購物車</button>
					<div class="dropdown-menu" id="">
						<label class="dropdown-item" for="" id="a"></label> <label
							class="dropdown-item" for="" id="b"></label>
						<labelmclass ="dropdown-item" for="" id="c"> </label> <a
							href="<c:url value="/pages/shopcar.page"/>"><button
								id="gotocart">前往結帳</button> </a>
					</div>
				</li>
			</ul>
		</div>
		</nav> </nav>


		<!-- img照片 -->
		<img class="myfinal" src="../img/f1.jpg">

		<!-- 訂單訊息 -->
		<!-- 收到訂單文字 -->
		<div class="myfinal1">
			<span>已經收到您的訂單</span>
		</div>

		<!-- 訂單編號  -->
		<div class="myfinal2">
			<span>訂單編號:</span>

			<!-- 這邊塞資料庫的資料 -->
			<span>${test.orderId}</span>
		</div>

		<div class="myfinal3">
			<div>
				<span>商品名稱：</span>
				<!-- 以下放入後端資訊 -->
				<c:forEach items="${test2}" var="a">
					<span>${a.prodfk.prodName}</span>
				</c:forEach>
			</div>
			<div>
				<span>商品數量：</span>
				<!-- 以下放入後端資訊 -->
				<span>${test5}</span>
			</div>

			<div>
				<span>商品總價：</span>
				<!-- 以下放入後端資訊 -->
				<span>${test4}</span>
			</div>

		</div>
		<!-- 按下後指向填寫表單 -->
		<a href="<c:url value="/pages/feedback.page" />">
		<button class="myfinal4">填寫表單</button>
		</a>

		<!-- 按下後指向回首頁 -->
		<a href="<c:url value="/pages/home.page" />"><button
				class="myfinal4">返回首頁</button></a>

	</div>

</body>
</html>