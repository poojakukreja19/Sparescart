<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>Add New Product</h2>
<hr>
<form action="manage_products_create" method="post">
<input type="text" name="id">
<input type="text" name="name">
<input type="text" name="price">
<input type="text" name="description">
<input type="submit" value="Create">
</form>
<br>
<table border="2">
<thead>
<tr>
<td> ID</td>
<td> NAME</td>
<td>PRICE</td>
<td> DESCRIPTION</td>
<td> Action</td>
</tr>
</thead>

<c:forEach var="product" items="${productList}">
<tr>
<td>${product.id}</td>
<td>${product.name}</td>
<td>${product.price}</td>
<td>${product.description}</td>
<td> <a href="manage_products_edit/${product.id}/${product.name}/${product.price}/${product.description}">Edit</a> | <a href="manage_products_delete/${product.id}">Delete</a></td>
</tr>
</c:forEach>
</table>
</center>
</body>
</html>