<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>How to insert image in database using Spring MVC</h2>

	<form  method="post" enctype="multipart/form-data" id="UploadForm">

		<pre>
		
	產品編號: <input type="number" name="prodID">
				
	產品名稱: <input type="text" name="prodName">
	
	產品價格: <input type="number" name="prodPrice">
	
	產品數量: <input type="number" name="prodCount">
	
	產品種類: <input type="text" name="prodCategory">
	
	產品單位: <input type="text" name="prodUnit">
				
	產品圖片: <input type="file" name="prodImg">
				
	<button type="submit" name="Insert" value="新增" id="btnSubmit"> </button>

</pre>

	</form>
	<p id="result1"></p>
	<p id="result"></p>
	<p>${msg}</p>
	<p>${error}</p>
	<script>

$(function(){
	
	
	
	
	$("#btnSubmit").click(function (event) {

        //ajax提交的話她會一直重新run程式直到回傳,你可以將此行註解使用開發者工具看一下console就知道了
        event.preventDefault();

        uploadFile();

    });
	
	 uploadFile = function() {

	    // 取得form
 	    var form = $('#UploadForm')[0]; //取得HTML中第一個form id為UploadForm

 	    var data = new FormData(form); //將form內的所有訊息打包成FormData object

	
	    $("#btnSubmit").prop("disabled", true);

	    $.ajax({
	        type: "POST",               //使用POST傳輸,檔案上傳只能用POST
	        enctype: 'multipart/form-data', //將資料加密傳輸 檔案上傳一定要有的屬性
	        url: "/chicken/test/pages/prod.controller111", //要傳輸對應的接口
	        data: data,         //要傳輸的資料,我們將form 內upload打包成data
	        processData: false, //防止jquery將data變成query String
	        contentType: false, 
	        cache: false,  //不做快取
	        async : false, //設為同步
	        timeout: 1000000, //設定傳輸的timeout,時間內沒完成則中斷
	        success: function (data) {

	            $("#result").text(data);//填入提示訊息到result標籤內
	            console.log("SUCCESS : ", data);
	            $("#btnSubmit").prop("disabled", false);
	
	        },
	        error: function (e) {

	            $("#result").text(e.responseText); //填入提示訊息到result標籤內
	            console.log("ERROR : ", e);
	            $("#btnSubmit").prop("disabled", false);

	        }
	    })
	}
  })
</script>
</body>
</html>