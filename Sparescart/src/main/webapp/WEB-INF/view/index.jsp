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
  <style>
body  {
background-color: pink;
}
h4 {
    color: #B22222;
}
</style>
  </head>
<body>
<center><h1>SparesCart Application</h1></center>

<center><h3>${msg}</h3></center>
<h3>${loginmessage}</h3>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="ndex">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <c:if test="${empty loginmessage}">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      </c:if>
      <c:if test="${empty loginmessage}">
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      <c:if test="${not empty loginmessage}">
      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </c:if> 
      <c:if test="${isAdmin==false}">
      <li><a href="mycart"><span class="glyphicon glyphicon-shopping-cart"></span> MyCart</a></li>
      </c:if>
    </ul>
  </div>
</nav> 
<center><h4>${successmessage}</h4></center>
<center><h4>${errormessage}</h4></center>

<c:if test="${isAdmin==true }">
<jsp:include page="Admin/AdminHome.jsp"></jsp:include>
</c:if>

<c:if test="${Isuserclickedlogin==true}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>

<c:if test="${not empty errormessage}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>

<c:if test="${Isuserclickedregister==true}">
<jsp:include page="Register.jsp"></jsp:include>
</c:if>

<c:if test="${Isuserclickedlogin==false}">
 <marquee behavior="alternate">
<img src="http://www.americancoolingandheating.com/wp-content/uploads/2013/05/AirCondInside.jpg" class="img-rectangle" width="300" height="200">
<img src="http://www.discountacparts.com/images/29-5089NH.jpg" class="img-rectangle" width="300" height="200">
<img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTBp9BQ0to9XwOzyVdVEf4SbQa-oO7uxxXIPGI8qCA2K_Cz69dM" class="img-rectangle" width="300" height="200">
<img src="http://www.bdaircool.com/application/views/module/product_more_image/Ac%20Compresser6.jpg" class="img-rectangle" width="300" height="200">
<img src="http://ebay.autopartsdeal.com/prodimages/1200x1200/1470974820-12181451_1.jpg" class="img-rectangle" width="300" height="200">
</marquee>
</c:if>

</body>
</html>

