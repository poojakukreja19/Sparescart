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
<form action="manage_supplier_create" method="post">
<input type="text" name="userId">
<input type="text" name="name">
<input type="text" name="address">
<input type="submit" value="Create">
</form>

<table border="2">
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
<tr>
<td>${supplier.id}</td>
<td>${supplier.name}</td>
<td>${supplier.contact}</td>
<td>${supplier.address}</td>
<td> <a href="/manage_suppliers">Edit</a> | <a href="/manage_suppliers">Delete</a></td>
</tr>
</c:forEach>
</table>
</center>
</body>
</html>