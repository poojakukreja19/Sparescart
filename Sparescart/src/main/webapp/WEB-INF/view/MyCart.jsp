<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Insert title here</title>
</head>
<body>
hello
<center><h3>List of Category</h3></center>

<table class="table table-bordered">
<thead>
<tr>
<td> USER</td>
<td> CART_ID</td>
<td> PRICE</td>
<td> STATUS</td>
<td> QUANTITY</td>
<td> ADDED_DATE</td>
<td> PRODUCT</td>

<td> Action</td>
</tr>
</thead>
</form>
<c:forEach var="mycart" items="${mycartList}">
<tr>
<td><input type="text" name="Id" value="${mycart.user}"> </td>
<td><input type="text" name="Id" value="${mycart.id}"> </td>
<td><input type="text" name="name" value="${mycart.price}"></td>
<td><input type="text" name="name" value="${mycart.status}"></td>
<td><input type="text" name="name" value="${mycart.quantity}"></td>
<td><input type="text" name="description" value="${mycart.added_date}"></td>
<td><a href="manage_category_save/${product.id}">Add to Cart</a> | <a href="manage_category_delete/${product.id}">Delete</a></td>
</tr>
</c:forEach>
</form>
</table>
</center>
	

	<h2>Total cost : ${totalAmount}</h2>
	<br>
	<a href="cart_checkout">Checkout </a> 
	<br>
	<br>


</body>
</html>