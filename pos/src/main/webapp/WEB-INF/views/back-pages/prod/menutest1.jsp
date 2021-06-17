<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>Product Table</title>
</head>
<style>
    #prodbody {
        text-align: center;
        margin-top: 2%;
    }
    
    #UploadForm {
        position: relative;
        margin: auto;
        text-align: left;
        /* border: 2px black solid; */
        width: 500px;
    }
    
    #message {
        position: relative;
        left: 500px;
        bottom: 500px;
    }
    
    #err {
        color: red;
    }
</style>
<body>
	

	 <div id="prodbody">
        <h2>Product Table</h2>

        <form method="post" enctype="multipart/form-data" id="UploadForm" action="/chicken/pages/prod.controller1111">

            <div class="form-floating mb-3">
                <input type="number" class="form-control" id="floatingInput" placeholder="產品編號" name="prodID" value="${param.prodID}">
                <label for="floatingInput">產品編號:</label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="產品名稱" name="prodName" value="${param.prodName}">
                <label for="floatingInput">產品名稱:</label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="產品種類" name="prodCategory" value="${param.prodCategory}">
                <label for="floatingInput">產品種類:</label>
            </div>
            <div class="form-floating mb-3">
                <input type="number" class="form-control" id="floatingInput" placeholder="產品數量" name="prodCount" value="${param.prodCount}">
                <label for="floatingInput">產品數量:</label>
            </div>
            <div class="form-floating mb-3">
                <input type="number" class="form-control" id="floatingInput" placeholder="產品價格" name="prodPrice" value="${param.prodPrice}">
                <label for="floatingInput">產品價格:</label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="產品單位" name="prodUnit" value="${param.prodUnit}">
                <label for="floatingInput">產品單位:</label>
            </div>
            <div class="form-floating mb-3">
                <input type="file" class="form-control form-control-sm" id="floatingInput" placeholder="產品圖片" name="prodImg" value="${param.prodImg}">
                <label for="floatingInput">產品圖片:</label>
            </div>


            <input class="btn btn-primary" type="submit" value="新增" name="product"> <input class="btn btn-primary" type="submit" name="product" value="查看">
			<input type="button" class="btn btn-secondary" value="Clear" onclick="clearForm()">

        </form>
        <div id="message">
            <p>${msg}</p>
            <p id="err">${error}</p>
        </div>







    </div>
	<script>

	function clearForm() {
		var inputs = document.getElementsByTagName("input");
		for(var i=0; i<inputs.length; i++) {
			if(inputs[i].type=="text") {
				inputs[i].value="";
			}
			if(inputs[i].type == "number"){
				inputs[i].value = "";
			}
		}
	}
</script>
</body>
</html>