<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script type="text/javascript">
function plus(){
	$('.click_inc').click(function() {
		
		console.log("a");
		var a = $(this).closest("div").index();
		console.log(a+"a")
		
		var x = document.getElementById(`menu_inputid${'${a}'}`).innerText;
		
		
		
		var p = document.getElementById(`price${'${a}'}`).innerText;
	
		var price = p.slice(2, 5);
 		var num = menu_click_inc(x);
		     document.getElementById(`menu_inputid${'${a}'}`).innerText = num;
		     
		var total = sum(num, price);
		     document.getElementById(`total${'${a}'}`).val = total;

		
		     console.log(document.getElementById(`total${'${a}'}`).val)

		totalsum();

	
	})
}
function minus(){
	$('.click_dec').click(function(e) {
		var a = $(e.target).closest("div").index();
		var x = document.getElementById(`menu_inputid${'${a}'}`).innerText;
		var p = document.getElementById(`price${'${a}'}`).innerText;
		//var p = $(`#price${'${a}'}`).text();
		var price = p.slice(2, 5);
		var num = menu_click_dec(x);
		if (num >= 0) {
			document.getElementById(`menu_inputid${'${a}'}`).innerText = num;
			var total = sum(num, price);
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
		var total_d = document.getElementById('total3').val;
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

</script>
