<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h1>Welcome Administrator</h1></center>

<a href="manage_categories">Manage Categories</a><br>

<a href="manage_products">Manage Products</a><br>

<a href="manage_suppliers">Manage Suppliers</a><br>

<c:if test="${isUserClickedCategories==true}">
<jsp:include page="Category.jsp"></jsp:include>
</c:if>

<c:if test="${isUserClickedProducts==true}">
<jsp:include page="Products.jsp"></jsp:include>
</c:if>

<c:if test="${isUserClickedSuppliers==true}">
<jsp:include page="Supplier.jsp"></jsp:include>
</c:if>


</body>
</html>