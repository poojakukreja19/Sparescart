<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h3>List of MyCart</h3>

<table class="table table-bordered">
<c:forEach var="customerDetail" items="${customerDetailList}">
<form action="" method="get">
<tr>
<td>CUSTOMER NAME<input type="text" name="customerName" value="customerName" > </td>
<td>CUSTOMER ADDRESS<input type="text" name="customerAddress" value="customerAddress"> </td>
<td><type="text" name="customerEmail" value="customerEmail"></td>
<td><input type="text" name="customerPhone" value="customerPhone"></td>
</tr>
</c:forEach>
</form>
</table>	
</body>
</html>