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
<!--     <link rel="stylesheet" href="./mycss.css"> -->
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
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.menu_m1 {
	/* background: rgba(0, 0, 0, 0.1); */
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
		<a class="navbar-brand" href="./home.jsp">大專雞排戰隊</a>
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
				<li class="nav-item"><a class="nav-link" href="./feature.jsp">公司特色</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">公司介紹</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#"
					tabindex="-1" aria-disabled="true">Disabled</a></li>
				<li class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">購物車</button>
					<div class="dropdown-menu" id="">
						<label class="dropdown-item" for="" id="a"></label> <label
							class="dropdown-item" for="" id="b"></label> <label
							class="dropdown-item" for="" id="c"></label>
					</div>
				</li>
			</ul>
		</div>
	</nav>
	<div class="menu_m1">
		<div class="menu_m2">
			<!-- <div style="border:  2px solid black;">
                <img src="./img/c${i + 1}.jpg" alt="">
                <h5>${goods[i].pname}</h5>
                <hr>
                <h5 id="price${i + 1}">NT${goods[i].pprice}</h5>
                <ul>
                    <li style="list-style: none;">
                        <button class="click_inc" id="menu_click_inc${goods[i].id}">+</button>
                        <span id="menu_inputid0">10</span>
                        <button class="click_dec" id="menu_click_dec${goods[i].id}">-</button>
                    </li>
                </ul>


                <br>
                <span>金額</span>
            </div> -->

		</div>
		<div>
			<h1 id="total" style="text-align: center;">
				<span>Total:</span>0
			</h1>
		</div>
	</div>
	


<script>
$(function(){
	
	
	$.get('/chicken/public/api/prod',function(e){
		console.log(e);
		goods=e;
		findapi();
	})	
	
	function findapi(){
		
		$.each(goods,function(key,obj){
			
			var newgoods = obj.prodName + obj.prodPrice
			console.log(newgoods);
			
			
	         $('.menu_m2').append(`            
	         <div style="border:  2px solid black;">
	                 <img src="../img/c${'${obj.prodID}'}.jpg" alt="">
 	                 <h5>${'${obj.prodName}'}</h5>
 	                 <hr>
 	                 <h5 id="price${'${key}'}">NT${'${obj.prodPrice}'}</h5>
	                
	                
 	                     <button class="click_inc" id="menu_click_inc${'${obj.prodID}'}">+</button>
 	                     <span id="menu_inputid${'${key}'}">0</span>
 	                     <button class="click_dec" id="menu_click_dec${'${obj.prodID}'}">-</button>
 	                     <input type="hidden" value="" id="total${'${key}'}">
	                
	                
	                 <br>
	                 <span>金額</span>
	             </div>`)
	     
		})	
			
			

		plus();    //加的按鈕
		minus();   //減的按鈕
		
		menu_click_dec(plus);
		menu_click_inc(minus);
		
	}
 })		
		
	
	
	
	
	

	

 	function menu_click_dec(b) {
        if (b > 0) {
            return b = parseInt(b) - 1;
        }
    }

    function menu_click_inc(a) {

        return a = parseInt(a) + 1;
    }

    function sum(c, d) {
        return e = parseInt(c) * d
    }
    
    
 



  

</script>

</body>
<!-- <script src="./test.js"></script> -->
<!-- <script src="./jqtest.js"></script> -->
<jsp:include page="../../menufunction.jsp"></jsp:include>
</html>
