<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
 <style>
  .table>tbody>tr>td, .table>tfoot>tr>td{
    vertical-align: middle;
}
@media screen and (max-width: 600px) {
    table#cart tbody td .form-control{
		width:20%;
		display: inline !important;
	}
	.actions .btn{
		width:36%;
		margin:1.5em 0;
	}
	
	.actions .btn-info{
		float:left;
	}
	.actions .btn-danger{
		float:right;
	}
	
	table#cart thead { display: none; }
	table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
	table#cart tbody tr td:first-child { background: #333; color: #fff; }
	table#cart tbody td:before {
		content: attr(data-th); font-weight: bold;
		display: inline-block; width: 8rem;
	}
	
	
	
  </style>
</head>
<body>
<center>
<h3>List of Product</h3>

<!--<table class="table table-bordered">
<thead>
<tr>
<td> ID</td>
<td> NAME</td>
<td>PRICE</td>
<td> DESCRIPTION</td>
<td> QUANTITY</td>
<td> Action</td>
</tr>
</thead>
<c:forEach var="product" items="${productList}">
<form action="addtocart" method="get">
<tr>
<td><input type="text" name="id" value="${product.id}" > </td>
<td><input type="text" name="name" value="${product.name}"  readonly="true"></td>
<td><input type="text" name="price" value="${product.price}"  readonly="true"></td>
<td><input type="text" name="description" value="${product.description}" readonly="true"></td>
<td><input type="text" name="quantity" value="10"></td>

<td><input type="submit" value="Add to Cart"> </td>
</tr>
</form>
</c:forEach>-->
</center>
<c:forEach var="product" items="${productList}">
<form action="addtocart" method="get">
<div class="container">
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:20%">Product</th>
							<th style="width:40%">Product Stock</th>
						    <th style="width:20%">Product NAME</th>
						    <th style="width:10%">ID</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">ACTION</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
						<td><input type="text" name="description" value="${product.description}" readonly="true"></td>
						
							<td data-th="Product">
								<div class="row">
								<td><input type="text" name="quantity" value="10"></td>
								</div>
								</div>
				<td><input type="text" name="name" value="${product.name}"  readonly="true"></td>
								
								
							</td>
							<td><input type="text" name="id" value="${product.id}" > </td>

                             <td><input type="text" name="price" value="${product.price}"  readonly="true"></td>
							<td data-th="Quantity">
								<input type="number" class="form-control text-center" value="1">
							</td>
                          <td><input type="submit" value="Add to Cart"> </td>
							<td class="actions" data-th="">
								<button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
								<button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>								
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
	                <td><input type="text" name="price" value="${product.price}"  readonly="true"></strong></td>
						</tr>
					</tfoot>
				</table>
</div>
</form>
</c:forEach>
</body>
</html>