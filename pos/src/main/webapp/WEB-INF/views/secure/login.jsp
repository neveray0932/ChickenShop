<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../include1.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="UTF-8"> -->
<title>Insert title here</title>
</head>
<body>
<%--    <img alt="" src="<c:url value="/1.jpg" />"> --%>
	<form class="mylogin" action="<c:url value="/pages/emp.controller" />"
		method="post">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
					data-bs-target="#home" type="button" role="tab"
					aria-controls="home" aria-selected="true">會工</button>
			</li>
<!-- 			<li class="nav-item" role="presentation"> -->
<!-- 				<button class="nav-link" id="profile-tab" data-bs-toggle="tab" -->
<!-- 					data-bs-target="#profile" type="button" role="tab" -->
<!-- 					aria-controls="profile" aria-selected="false">員工</button> -->
<!-- 			</li> -->

		</ul>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home" role="tabpanel"
				aria-labelledby="home-tab">

				<h1>員工登入</h1>
				<input type="text" name="empid" placeholder="username" value="${param.empid}">  
				<input type="password" name="password" placeholder="Password" value="${param.password}"> 
				<input type="submit" name="" value="Login">

				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#exampleModal">註冊</button>


			</div>
<!-- 			<div class="tab-pane fade" id="profile" role="tabpanel" -->
<!-- 				aria-labelledby="profile-tab"> -->
<!-- 				<h1>員工登入</h1> -->
<!-- 				<input type="text" name="" placeholder="Username"> <input -->
<!-- 					type="password" name="" placeholder="Password"> <input -->
<!-- 					type="submit" name="" value="Login"> -->

<!-- 				<button type="button" class="btn btn-primary" data-bs-toggle="modal" -->
<!-- 					data-bs-target="#exampleModal">註冊</button> -->
<!-- 			</div> -->

 		</div> 




	</form>


	<!-- sign -->
	<!-- Button trigger modal -->


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content"
				style="width: 700px; margin: 0 0px 0 -100px;">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">會員註冊</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body" style="height: 700px; width: 100%;">
					<div class="container-fluid" >
						<div class="mysign">
							<div>
								<form class="row g-3 needs-validation" novalidate>
  <div class="col-md-4 position-relative">
    <label for="validationTooltip01" class="form-label">First name</label>
    <input type="text" class="form-control" id="validationTooltip01" value="Mark" required>
    <div class="valid-tooltip">
      Looks good!
    </div>
  </div>
  <div class="col-md-4 position-relative">
    <label for="validationTooltip02" class="form-label">Last name</label>
    <input type="text" class="form-control" id="validationTooltip02" value="Otto" required>
    <div class="valid-tooltip">
      Looks good!
    </div>
  </div>
  <div class="col-md-4 position-relative">
    <label for="validationTooltipUsername" class="form-label">Username</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="validationTooltipUsernamePrepend">@</span>
      <input type="text" class="form-control" id="validationTooltipUsername" aria-describedby="validationTooltipUsernamePrepend" required>
      <div class="invalid-tooltip">
        Please choose a unique and valid username.
      </div>
    </div>
  </div>
  <div class="col-md-6 position-relative">
    <label for="validationTooltip03" class="form-label">City</label>
    <input type="text" class="form-control" id="validationTooltip03" required>
    <div class="invalid-tooltip">
      Please provide a valid city.
    </div>
  </div>
  <div class="col-md-3 position-relative">
    <label for="validationTooltip04" class="form-label">State</label>
    <select class="form-select" id="validationTooltip04" required>
      <option selected disabled value="">Choose...</option>
      <option>...</option>
    </select>
    <div class="invalid-tooltip">
      Please select a valid state.
    </div>
  </div>
  <div class="col-md-3 position-relative">
    <label for="validationTooltip05" class="form-label">Zip</label>
    <input type="text" class="form-control" id="validationTooltip05" required>
    <div class="invalid-tooltip">
      Please provide a valid zip.
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Submit form</button>
  </div>
</form>


							</div>


						</div>
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">送出</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>