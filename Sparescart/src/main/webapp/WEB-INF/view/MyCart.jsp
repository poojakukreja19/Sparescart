<%@page import="com.niit.sparescart.domain.OrderDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<center><h3>List of MyCart</h3>

<table class="table table-bordered">
<thead>
<tr>
<td> ID</td>
<td> ORDER DATE</td>
<td> PRICE</td>
<td> QUANTITY</td>
<td> AMOUNT</td>

<td> Action</td>
</tr>
</thead>
<c:forEach var="orderDetail" items="${orderDetailList}">
<form action="" method="get">
<tr>
<td><input type="text" name="user" value="${orderDetail.id}" readonly="true"> </td>
<td><input type="text" name="Id" value="${orderDetail.orderDate}"> </td>
<td><input type="text" name="price" value="${orderDetail.price}"></td>
<td><input type="text" name="quantity" value="${orderDetail.quantity}"></td>
<td><input type="text" name="amount" value="${orderDetail.amount}"></td>
<td> <a href="orderdelete/${orderDetail.id}">REMOVE</a></td>
</tr>
</c:forEach>
</form>
</table>	
	<h3>Total cost : ${totalAmount}</h2>
	<br>
	<a href="cart_checkout">Checkout </a> 
	</center>

</body>
</html>