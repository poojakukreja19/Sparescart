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
<center><h3>Add New Category</h3></center>
<hr>
<br>
<center>
<form action="manage_category_create" method="post">
ID<input type="text" name="id">
NAME<input type="text" name="name">
DESCRIPTION<input type="text" name="description">
<input type="submit" value="Create">
</form>
<br>
<center><h3>List of Category</h3></center>

<table class="table table-bordered">
<thead>
<tr>
<td> ID</td>
<td> NAME</td>
<td> DESCRIPTION</td>
<td> Action</td>
</tr>
</thead>
</form>
<c:forEach var="category" items="${categoryList}">
<tr>
<td><input type="text name="Id" value="${category.id}"> </td>
<td><input type="text" name="name" value="${category.name}"></td>
<td><input type="text" name="description" value="${category.description}"></td>
<td><a href="manage_category_edit/${category.id}/${category.name}/${category.description}">Edit</a> | <a href="manage_category_delete/${category.id}">Delete</a></td>
</tr>
</c:forEach>
</form>
</table>
</center>
</body>
</html>




