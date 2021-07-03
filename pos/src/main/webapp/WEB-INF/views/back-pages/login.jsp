<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../css/mycss.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
       

<!--     <link rel="stylesheet" href="../mycss.css"> -->
    </head>

    <body>
        <!-- 上面的標題 -->
        <div class="collapse" id="navbarToggleExternalContent">
            <div class="bg-dark p-4">
                <h5 class="text-white h4">Welcome to my home</h5>
                <ul id="navbar">
                    <li><span class="text-muted">Menu </span></li>
                    <li><span class="text-muted">About me</span></li>
                </ul>


            </div>
        </div>

        <%-- <nav class="navbar sticky-top navbar-expand-md navbar-dark bg-dark">
            <a class="navbar-brand" href="login.html">大專雞排戰隊</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="./menu.html"><span class="sr-only">Menu </span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
            </div>
        </nav> --%>




        <form class="mylogin" action="<c:url value="/back-pages/login.controller" />" method="get">
            <!-- 上面員工小標籤 -->
            <ul class="nav nav-tabs" id="myTab" role="tablist">

            </ul>
            
            <!-- 員工登入的帳號密碼 -->
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <h2>歡迎使用員工入口網站</h2>
                
                <label>帳號: </label> <input type="text"  name="empId" value="${param.empId}" >
                <label>密碼: </label><input type="password"  name="password" value="${param.password}">
                <input  type="submit" name="" value="登入" style="background-color:#FFECC9;" >
            </div>


            




        </form>




    </body>
    <script>
        // var myModal = document.getElementById('myModal')
        // var myInput = document.getElementById('myInput')

        // myModal.addEventListener('shown.bs.modal', function () {
        //     myInput.focus()
        // })
    </script>

</html>