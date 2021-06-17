<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<!-- <link rel="stylesheet" type="text/css" href="../css/table.css" /> -->

<title>Employee Table</title>
</head>
<style>
	#emptable{
		
		border: black 2px solid;
		margin: auto;
		width: 800px;
	}
</style>
<body>

<h3>員工表查詢結果 :共 ${fn:length(select)}  筆</h3>
<c:if test="${not empty select}">
<table class="table table-primary table-striped" id="emptable">
	<thead>
	<tr>
		<th>員工編號</th>
		<th>員工姓名</th>
		<th>職位</th>
		<th>上班時數</th>
<!-- 		<th>權限</th> -->
	
	</tr>
	</thead>
	<tbody>
	
	<c:forEach var="row" items="${select}">
		<c:url value="/pages/emp.page" var="path">
			<c:param name="empID" value="${row.empID}" />
			<c:param name="empName" value="${row.empName}" />
			<c:param name="empPostion" value="${row.empPostion}" />
			<c:param name="empHrs" value="${row.empHrs}" />

		</c:url>
	<tr class="table-light">
		<td><a href="${path}">${row.empID}</a></td>
		<td>${row.empName}</td>
		<td>${row.empPostion}</td>
		<td>${row.empHrs}</td>

	</tr>
	</c:forEach>
	
	</tbody>
</table>
</c:if>

<h3><a href="<c:url value="/pages/emp.page" />">Employee Table</a></h3>

</body>
</html>