<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home</title>
	<!-- <link rel="stylesheet" href="./css/mycss.css"> -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<style>
    img {
    width: 50px;
    }
	.box {
		display: inline-block;
	}

	#navbarNav {
		position: relative;
		margin: 0 150px 0 150px;
	}

	#introBody {
		background-image: url(../img/backgorup.jpg);
		background-size: cover;
	}

	#index_position {
		text-align: center;
	}

	.home_footer {
		position: flix;
		bottom: 0px;
		background-color: rgba(34, 31, 31, 0.89);
		width: 90%;
		text-align: center;
		margin: auto;
		color: white;
		font-size: larger;
		left: 5%
	}
</style>

</head>

<body>
	<nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark">
	<nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark" style="width: 70%; margin: auto;">

	<div class="collapse navbar-collapse" id="navbarNav">
		<a class="navbar-brand" href="<c:url value="/pages/home.page"/>">
			<img src="../img/Logo.jpg" alt="logo" width="50px"
			style="border-radius: 30px">雞排點餐系統
		</a>

		<ul class="navbar-nav ">
			<li class="nav-item active"><a class="nav-link"
				href="<c:url value="/pages/menu1.page"/>"> <span class="sr-only">餐點菜單</span>
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
	</nav>
	

    <%-- 內容開始 --%>
				<form id="form1" action="Server_form" style="text-align : center;">
    			    <fieldset id="fi1">
    			        
    			        <legend>餐點問卷單</legend>
    			        <div>
    			            <label>
    			                <input type="radio" name="boy">
    			                <img class="img1" src="../img/boy.png" id="boy" alt="">
    			            </label>
    			            <label>
    			                <img class="img1" src="../img/girl.png" id="boy" alt="">
    			                <input type="radio" name="boy">
    			            </label>
    			        </div>
    			    </fieldset>
					<br>
					<fieldset id="fi1">
					   <label>1.請問是否操作時有遇到困難?</label>
    			       <input type="radio" value="Yes">Yes
    			       <input type="radio" value="No">No
    			    </fieldset>
					<br>
    			    <fieldset id="fi2">
    			       <label for="msg">2.有哪些地方需要改善的?</label> <br>
    			       <textarea id="msg"></textarea>
    			    </fieldset>
					<br>
    			    <fieldset id="fi3">
    			        <legend>3.您是如何知道ChickenShop?</legend>
    			        <input id="d1" name="sport" type="checkbox"> <label for="d1">新聞電視</label>
    			        <input id="d2" name="sport" type="checkbox"> <label for="d2">報章雜誌</label>
    			        <input id="d3" name="sport" type="checkbox"> <label for="d3">社交媒體</label>
    			        <input id="d4" name="sport" type="checkbox"> <label for="d4">親友介紹</label>
    			        <input id="d5" name="sport" type="checkbox"> <label for="d5">Line Bot</label>
    			        <input id="d6" name="sport" type="checkbox"> <label for="d6">其他</label>
    			    </fieldset>

					<br>
					<fieldset>
    				<legend>4.整體滿意度</legend>
    			    <input type="radio" value="1">非常滿意
    			    <input type="radio" value="2">滿意
    			    <input type="radio" value="3">沒有意見
    			    <input type="radio" value="4">不滿意
    			    <input type="radio" value="5">非常不滿意
    			    <!-- <input type="text"> -->
    			    </fieldset>
    			    
    			    <br>
					<input type="submit">
    			    <input type="reset">
    			</form>
			<%-- 內容結束 --%>
</body>

</html>