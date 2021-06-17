<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>ShopCar</title>
<link rel="stylesheet" href="../css/mycss.css">
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
</style>
</head>

<body>
	<nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark">
		<nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark"
			style="width: 80%; margin: auto;">

			<div class="collapse navbar-collapse" id="navbarNav">
				<a class="navbar-brand" href="<c:url value="/pages/home.page"/>"> <img
					src="../img/LOGO.png" alt="logo" width="50px">雞排點餐系統
				</a>
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value="/pages/menu.page"/>"> <span>餐點菜單</span>
					</a></li>
				</ul>
			</div>
		</nav>
	</nav>


	<br>
	<br>
	<div id="show">
		<form action="<c:url value="/secure/shopcar.controller" />"
			method="get">
			<table id="shopcarT" class="table table-sm table-dark"
				style="margin-top: 100px;">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th>商品名稱</th>
						<th>商品價格</th>
						<th>商品數量</th>
						<th>商品總價</th>
					</tr>
				</thead>
				<tbody id="tbodylist">
					<tr>
						<th scope="row">1</th>
						<td><input class="detailName" name="prodName" value="${param.prodName}" type="text"></td>
<!-- 						<td><input class="detailName" name="prodName" value="起司雞排" disabled></td> -->
						<td id="cart_price1">70 </td>
						<td>
							<button type="button" class="btn btn-dark" id="cart_inc1">+</button>
							<span id="cart_num1">1</span>
							<button type="button" class="btn btn-dark" id="cart_dec1">-</button>
						</td>
						<td id="cart_resultp">$70</td>

					</tr>

					<tr>
						<th></th>
						<td></td>
						<td></td>
						<td></td>
						<td><button class="btn btn-primary" type="submit" name="orderInsert" value="Insert">確認訂單</button></td>
					</tr>

				</tbody>

			</table>
		</form>
		
	</div>

	<script>
	$(".detailName").css("text-align", "center");
		console.log($(".detailName").text() );
		var dbprodname = $(".detailName").text();
		console.log( );
		
		
		$("#timeline").width("80%").css("margin", "auto");
		$("#shopcarT").width("80%").css("margin", "auto");
		$("#cartbottom").width("80%").css("margin", "auto").css('margin-top',
				'20px');

		// $("#show").css("margin", "auto").css("width","500px");
		var test = JSON.parse(localStorage.getItem('items'));

		//         var goods = [
		//             { id: 1, pname: '起司雞排', pprice: 70, pnum: test[0].pnum, total: test[0].totalprice },
		//             { id: 2, pname: '麻辣雞排', pprice: 80, pnum: test[1].pnum, total: test[1].totalprice },
		//             { id: 3, pname: '天使雞排', pprice: 60, pnum: test[2].pnum, total: test[2].totalprice }
		//         ]
	</script>


	<!-- 	<script src="../Script/test2.js"></script> -->
</body>


</html>