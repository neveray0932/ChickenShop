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
	<form method="POST" enctype="multipart/form-data" id="UploadForm">
		<input type="file" name="files" /><br />
		<input type="submit" value="Submit" id="btnSubmit" />
	</form>
</body>

<script>

$(function(){
	var a=[];
	
	$.ajax({
		url: "/chicken/public/api/prod",
		type: "get",
		success: doSuccess
		
	});
	function doSuccess(json){
		//console.log(json[0].prodName)
		console.log(json)
		
	}
	
	
	
	
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
	        url: "/chicken/api/upload/multi", //要傳輸對應的接口
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
</html>