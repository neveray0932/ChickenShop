<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Menu</title>

<!-- <link rel="stylesheet" href="../css/mycss.css"> -->
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
<!-- <script src="../Script/jquery-3.4.1.js"></script> -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.menu_m1 {
	/*                     background: rgba(0, 0, 0, 0.1); */
	margin: 0 auto;
	width: 1500px;
	height: 100%;
}

.menu_m2 {
	text-align: center;
}

.menu_m2 div {
	width: 300px;
	display: inline-block;
	margin: 100px 50px;
}

.menu_m1 img {
	width: 100%;
}

.menu_m2 hr {
	width: 50%;
	margin: auto;
	border: 2px black solid;
}

.menu_m2 h5, h1 {
	font-weight: bold;
}

#menu_clickid1 {
	width: 30px;
	height: 30px;
	border-radius: 7px;
	background-color: antiquewhite;
	/* border-width: 0px 0px; */
}
</style>
</head>

<body>
	
	<nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark">
		<nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark"
			style="width: 80%; margin: auto;">
			<a class="navbar-brand" href="<c:url value="/pages/home.page"/>"> <img
				src="../img/LOGO.png" alt="logo" width="50px">雞排點餐系統
			</a>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="<c:url value="/pages/menu.page"/>"><span
							class="sr-only">餐點菜單</span></a></li>
				</ul>

				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="">註冊/登入</a></li>

					<li class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">購物車</button>

						<div class="dropdown-menu " id="">
							<label class="dropdown-item" for="" id="a"></label> <label
								class="dropdown-item" for="" id="b"></label> <label
								class="dropdown-item" for="" id="c"></label> <a
								href="<c:url value="/pages/shopcar.page"/>   "><button id="gotocart">前往結帳</button> </a>
						</div>

					</li>
				</ul>
			</div>
		</nav>
	</nav>
	<div class="menu_m1">
		<div class="menu_m2"></div>
		<div>
			<h1 id="total" style="text-align: center;">
				<span>Total:</span>0
			</h1>
		</div>
	</div>
	<!-- <img src="../img/c1.jpg" alt=""> -->
</body>


<script>
            $(document).ready(function () {
            	
                var newsList = [];
                var goods = [
                    { id: 1, pname: '起司雞排', pprice: 70 },
                    { id: 2, pname: '麻辣雞排', pprice: 80 },
                    { id: 3, pname: '天使雞排', pprice: 60 }]

                $.ajax({
                    url: "/chicken/public/api/prod",
                    type: "get",
                    success: doSuccess
                });

                function doSuccess(goods) {

                    $.each(goods, function (index, obj) {
                        // console.log(goods);

                        $('.menu_m2').append(`            
                                <div style="border:  2px solid black;">
                                        <img src="../img/c1.jpg" alt="">
                                        <h5>${'${obj.prodName}'}</h5>
                                        <hr>
                                        <h5 id="price${'${index}'}">NT${'${obj.prodPrice}'}</h5>
                                            <button class="click_inc" id="menu_click_inc${'${obj.prodID}'}">+</button>
                                            <span id="menu_inputid${'${index}'}">0</span>
                                            <button class="click_dec" id="menu_click_dec${'${obj.prodID}'}">-</button>
                                            <input type="hidden" value="" id="total${'${index}'}">
                                        <br>
                                        <span>金額</span>
                                    </div>`
                        )

                    })
                    apple();
                    bee();
                }
            })


            function apple() {

                $('.click_inc').click(function () {
                    var a = $(this).closest("div").index();
                    //     		console.log(a)
                    var x = document.getElementById(`menu_inputid${'${a}'}`).innerText;
                    //     		var x =$(`#menu_inputid${'${a}'}`).text();
                    //     		console.log(x)
                    var p = document.getElementById(`price${'${a}'}`).innerText;

                    price = p.slice(2, 5);
                    num = menu_click_inc(x);
                    document.getElementById(`menu_inputid${'${a}'}`).innerText = num;
                    total = sum(num, price);
                    document.getElementById(`total${'${a}'}`).val = total;

                    totalsum();

                })
            }

            function bee() {
                $('.click_dec').click(function (e) {
                    var a = $(e.target).closest("div").index();
                    x = document.getElementById(`menu_inputid${'${a}'}`).innerText
                    num = menu_click_dec(x)
                    if (num >= 0) {
                        document.getElementById(`menu_inputid${'${a}'}`).innerText = num;
                        total = sum(num, price);
                        document.getElementById(`total${'${a}'}`).val = total;
                        totalsum();
                    } else {
                        alert('NO')
                    }

                })
            }
            function totalsum() {
                var total_a = document.getElementById('total0').val;
                var total_b = document.getElementById('total1').val;
                var total_c = document.getElementById('total2').val;
                sum1 = total_a, sum2 = total_b, sum3 = total_c;
                if (sum1 == undefined) {
                    sum1 = 0;
                }
                if (sum2 == undefined) {
                    sum2 = 0;
                }
                if (sum3 == undefined) {
                    sum3 = 0;
                }
                document.getElementById('total').innerHTML = ("<span>Total:</span>" + (sum1
                    + sum2 + sum3))

            }

            function menu_click_dec(b) { if (b > 0) { return b = parseInt(b) - 1; } }
            function menu_click_inc(a) { return a = parseInt(a) + 1; }
            function sum(c, d) { return e = parseInt(c) * d }

        </script>

<%--         <jsp:include page="./jqtest.jsp" /> --%>

<!-- <script src="../Script/test.js"></script> -->
<!-- <script src="./test3.js"></script> -->
<!-- <script src="../Script/jqtest.js"></script> -->

</html>