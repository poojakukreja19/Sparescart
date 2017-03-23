<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
  <script src="./bootstrap/js/jquery-2.2.3.min.js"></script>
  <script src="./bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<center><h1>Welcome Administrator</h1></center>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
      <li><a href="manage_categories">Manage Categories</a></li>
      <li><a href="manage_products">Manage Products</a></li>
      <li><a href="manage_suppliers">Manage Suppliers</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${not empty loginmessage}">
      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </c:if> 
    </ul>
  </div>
</nav>


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