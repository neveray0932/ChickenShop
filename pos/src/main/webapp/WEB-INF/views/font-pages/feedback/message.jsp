<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home</title>
	<!-- <link rel="stylesheet" href="./css/mycss.css"> -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<style>
		img {width: 50px;}
	</style>
	
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
</head>

<body>
	
	

    <%-- 內容開始 --%>
    
    <div class="mb-3" style="width:50%; margin:0 auto"> 
			<form id="form1" style=" margin:0 auto 100px auto;">
				
    			    <fieldset id="fi1" style="text-align:center">
	   			        <h2 >餐點問卷單</h2>
	   			        <div>
	   			            <label>
	   			                <input id="boy" type="radio" name="gender" >
	   			                <img class="img1" src="../img/boy.png"  alt="" >
	   			            </label>
	   			            
	   			            <label>
	   			                <img class="img1" src="../img/girl.png"  alt="">
	   			                <input id="girl"  type="radio" name="gender" >
	   			            </label>
	   			            
	   			        </div>
    			    </fieldset>
    			    <br/>
    			    <fieldset id="fi2">
	   			        
	   			        <div>
	   			        <h3>請選擇下拉選單</h3>
	   			            <select id="selectS" class="form-select" aria-label="Default select example">
							  <option selected></option>
							  <option value="1" >滿意</option>
							  <option value="2">不滿意</option>
							  <option value="3">無意見</option>
							</select>
	   			        </div>
    			    </fieldset>
    			    <br/>
					<fieldset id="fi3">
					<h3>*留下您寶貴的意見?</h3>
    			       <textarea id="msg" class="form-control" rows="10" cols="50" style="resize:none"></textarea>
    			    </fieldset>
					
    			   
    			

				<div class="form-group col-xs-12">
                    <h3 for="pwd">姓名:</h3>
                    <input type="text" class="form-control" id="name">
                </div>
                <div class="form-group col-xs-12">
                    <h3 for="pwd">電話:</h3>
                    <input type="number" class="form-control" id="phone">
                </div>
                <div class="form-group col-xs-12">
                    <button type="button" id="sendOrder" class="btn btn-primary col-xs-12" onclick="">提交</button>
					<input type="reset" class="btn btn-primary col-xs-12" onclick="" >
                </div>
                </form>
                </div>
			<%-- 內容結束 --%>
			
			<script type="text/javascript">
			


		// 監聽 送出訂單 按鈕點擊
        // 下面這段主要在組合資料，還有擋使用者不填資料不能送出
        $('#sendOrder').click(function(e){
        var status = true;
        // 姓名
        var name = $('#name').val();
        // 電話
        var phone = $('#phone').val(); 
        
        //意見
        var msg= $('#msg').val();

        //性別
        var gender;
        if(document.getElementById('boy').checked != false || document.getElementById('girl').checked != false){
	       	if(document.getElementById('boy').checked){
	       		gender="boy";
	       	}else{
	       		gender="girl";
	       	}
        }
         
 
        //滿意度
        var satis =document.getElementById('selectS').value;
        
        console.log(satis)
        

        // 擋住不填資料邏輯
//         if(name == ''){
//           $('#name').css('border','1px solid #ff0000');
//           status = false;
//         }
//         if(phone == ''){
//           $('#phone').css('border','1px solid #ff0000');
//           status = false;
//         }
        if(msg == ''){
          $('#msg').css('border','1px solid #ff0000');
          status = false;
          Swal.fire({
        	  icon: 'error',
        	  title: '哭阿...',
        	  text: '請填寫您寶貴的意見!'
        	});
        }


//         // 如果 �必填欄位都過了 才會到這邊
        if(status){
          // 增加日期資料
          var currentdate = new Date();
          var filltime = currentdate.getFullYear() + "/"
                + (currentdate.getMonth() + 1) + "/"
                + currentdate.getDate() + "  "
                + currentdate.getHours() + ":"
                + currentdate.getMinutes() + ":"
                + currentdate.getSeconds();
          // 打包 要的資料
          
          var data = {
            'name' : name,
            'phone':phone,
            'msg':msg,
            'satis':satis,
            'gender':gender,
            'time': filltime
//             'order': order,
//             'price': price,
          }
          console.log(data);
          // 呼叫 send ajax function
          send(data);
        }
      });
			function send(data){
			      $.ajax({
			        // 這邊用get type
			        type: "get",
			        // api url - google appscript 產出的 url
			        url: "https://script.google.com/macros/s/AKfycbyCPqEoPbHG0rk302nj3tISYnLbDqMCOrR0sTX-GIwOY7f6rFP7PAaoy8h45NGufo4n/exec",
			        // 剛剛整理好的資料帶入
			        data: data,
			        // 資料格式是JSON 
					
			        dataType: "JSON",
			        // 成功送出 會回頭觸發下面這塊感謝
			        success: function (response) {
			          console.log(response);
			          Swal.fire('提交成功!',
								'感謝您寶貴的建議!',
								'success');
			        }
			      
			      });
			    }	
			
</script>
</body>

</html>