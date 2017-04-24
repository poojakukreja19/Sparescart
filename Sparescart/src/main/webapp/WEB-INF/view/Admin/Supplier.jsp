<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
  <script src="./bootstrap/js/jquery-2.2.3.min.js"></script>
  <script src="./bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<center>
<h3>Add New Supplier</h3>
<hr>
<form action="manage_supplier_create" method="get">
ID<input type="text" name="id">
NAME<input type="text" name="name">
CONTACT<input type="text" name="contact">
ADDRESS<input type="text" name="address">
<input type="submit" value="Create">
</form>
<br>
<h3>List of Supplier</h3>

<table class="table table-striped">
<thead>
<tr>
<td> ID </td>
<td> NAME </td>
<td> CONTACT </td>
<td> ADDRESS </td>
<td> Action </td>
</tr>
</thead>
<c:forEach var="supplier" items="${supplierList}">
<form action="manage_suppliers_edit/${supplier.id}" method="get">
<tr>
<td><input type="text" name="id" value="${supplier.id}"> </td>
<td><input type="text" name="name" value="${supplier.name}"></td>
<td><input type="text" name="contact" value="${supplier.contact}"></td>
<td><input type="text" name="address" value="${supplier.address}"></td>
<td><input type="submit" value="edit"> | <a href="manage_suppliers_delete/${supplier.id}">Delete</a></td>
</tr>
</form>
</c:forEach>

<!--<c:forEach var="supplier" items="${supplierList}">
<tr>
<td>${supplier.id}</td>
<td>${supplier.name}</td>
<td>${supplier.contact}</td>
<td>${supplier.address}</td>
<td> <a href="manage_suppliers_edit">Edit</a> | <a href="manage_suppliers_delete/${supplier.id}">Delete</a></td>
</tr>
</c:forEach>-->

</table>
</center>
</body>
</html>