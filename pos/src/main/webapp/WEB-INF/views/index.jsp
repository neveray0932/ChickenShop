<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>前台</h1>
		<h3>
			<a href="<c:url value="/pages/home.page" />">Home</a>
		</h3>
		<h3>
			<a href="<c:url value="/pages/menu.page" />">Menu</a>
		</h3>
		<h3>
			<a href="<c:url value="/pages/shopcar.page" />">ShopCar</a>
		</h3>
		<h3>
			<a href="<c:url value="/pages/order.page" />">Order</a>
		</h3>
		
	<h1>後台</h1>
		<h3>
			<a href="<c:url value="/pages/emp.page" />">Employee</a>
		</h3>
		
	
	
		<h3>
			<a href="<c:url value="/pages/menutestJava.page" />">MenuTestJava</a>
		</h3>
</body>
</html>