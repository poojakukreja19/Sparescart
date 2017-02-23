<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
  <script src="./bootstrap/js/jquery-2.2.3.min.js"></script>
  <script src="./bootstrap/js/bootstrap.min.js"></script>
  </head>
</head>
<body>
<center><h1>Shopping Cart Application</h1></center>

<center><h3>${msg}</h3></center>
<center><h3>${successMessage}</h3></center>
<center><h3>${errorMessage}</h3></center>
<h3>${loginMessage}</h3>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
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
    <c:if test="${empty loginMessage}">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      </c:if>
      <c:if test="${empty loginMessage}">
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      <c:if test="${not empty loginMessage}">
      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </c:if> 
    </ul>
  </div>
</nav> 

<c:if test="${not empty loginMessage}">
<a href="mycart">MyCart</a>
</c:if>

<c:if test="${UserClickedLogin==true}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>

<c:if test="${not empty errorMessage}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>

<c:if test="${UserClickedRegister==true}">
<jsp:include page="Register.jsp"></jsp:include>
</c:if>

</body>
</html>

