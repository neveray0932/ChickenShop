<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="../css/main.css" />

<title>Product</title>
<script type="text/javascript">
	function clearForm() {
		var inputs = document.getElementsByTagName("input");
		for (var i = 0; i < inputs.length; i++) {
			if (inputs[i].type == "text") {
				inputs[i].value = "";
			}
			if(inputs[i].type == "number"){
				inputs[i].value = "";
			}
		}
	}
</script>
</head>
<style>
#empbody {
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

.error {
	color: red;
}
</style>
<body>

	

	<div id="empbody">
            <h2>Employee Table</h2>
            <form method="get" id="UploadForm" action="<c:url value="/pages/empmanage.controller" />">
                <table>
                    <tr>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="floatingInput" placeholder="員工編號" name="empID" value="${param.empID}">
                            <label for="floatingInput">員工編號:</label>
                        </div>

                        <td><span class="error">${errors.empID}</span></td>
                    </tr>
                    <tr>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="floatingInput" placeholder="員工姓名" name="empName" value="${param.empName}">
                            <label for="floatingInput">員工姓名:</label>
                        </div>

                    </tr>

                    <tr>
                        <!-- <select class="form-select" aria-label="Default select example">
                            <option selected>職位</option>
                            <option value="1">One</option>
                            <option value="2">Two</option>
                            <option value="3">Three</option>
                          </select> -->
                        <div class="form-floating mb-3">
                            <select class="form-select" aria-label="Default select example" name="empPostion">
                                <option selected>職位</option>
                                <option value="${param.empPostion}">經理</option>
                                <option value="${param.empPostion}">員工</option>
                                <!-- <option value="3">Three</option> -->
                              </select>
                            <label for="floatingInput">職位:</label>
                        </div>

                    </tr>
                    <tr>
                        <div class="form-floating mb-3">
                            <input type="number" class="form-control" id="floatingInput" placeholder="上班時數" name="empHrs" value="${param.empHrs}">
                            <label for="floatingInput">上班時數:</label>
                        </div>

                    </tr>


                    <tr>
                        <td>
                            <input class="btn btn-primary" type="submit" name="empcontroller" value="Insert">
                            <input class="btn btn-primary" type="submit" name="empcontroller" value="Update">


                        </td>
                        <td>
                            <input class="btn btn-primary" type="submit" name="empcontroller" value="ShowAll">
                            <input class="btn btn-primary" type="submit" name="empcontroller" value="Select">

                            <input class="btn btn-secondary" type="button" value="Clear" onclick="clearForm()">
                        </td>
                    </tr>
                </table>

            </form>
        </div>

	<h3>
		<span class="error">${errors.action}</span>
	</h3>

	<c:if test="${not empty delete}">
		<h3>Delete Product Table Success : ${delete} row deleted</h3>
		<script type="text/javascript">
			clearForm();
		</script>
	</c:if>

	<c:if test="${not empty insert}">
		<h3>Insert Product Table Success</h3>
		<table border="1">
			<tr>
				<td>員工編號</td>
				<td>${insert.empID}</td>
			</tr>
			<tr>
				<td>員工姓名</td>
				<td>${insert.empName}</td>
			</tr>
			<tr>
				<td>職位</td>
				<td>${insert.empPostion}</td>
			</tr>
			<tr>
				<td>上班時數</td>
				<td>${insert.empHrs}</td>
			</tr>
			<%-- 	<tr><td>Expire</td><td>${insert.expire}</td></tr> --%>
		</table>
		<script type="text/javascript">
			clearForm();
		</script>
	</c:if>

	<c:if test="${not empty update}">
		<h3>Update Product Table Success</h3>
		<table border="1">
			<tr>
				<td>員工編號</td>
				<td>${update.empID}</td>
			</tr>
			<tr>
				<td>員工姓名</td>
				<td>${update.empName}</td>
			</tr>
			<%-- 	<tr><td>員工姓名</td><td>${update.empPassword}</td></tr> --%>
			<tr>
				<td>職位</td>
				<td>${update.empPostion}</td>
			</tr>
			<tr>
				<td>上班時數</td>
				<td>${update.empHrs}</td>
			</tr>
			<%-- 	<tr><td>Expire</td><td>${update.expire}</td></tr> --%>
		</table>
		<script type="text/javascript">
			clearForm();
		</script>
	</c:if>

</body>
</html>