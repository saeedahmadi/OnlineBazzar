<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<title>Check out</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
  -->
<script type="text/javascript" src="bootstrap/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order details</title>
</head>
<body>

	<h4>
		Thank you
		<c:out value="${order.customer.firstName}" />
		<c:out value="${order.customer.lastName}" />
	</h4>
	<h5>Your order detail :</h5>
	<div style="border-right:1px solid #6E6A6B; border-width:10px; ">
	<table style="width: 50%" border="1">
		<tr>
			<th>Product name</th>
			<th>Price</th>
		</tr>
		<c:forEach items="${order.items}" var="lineItem">
			<tr>
				<td><c:out value="${lineItem.product.name}" /></td>
				<td><c:out value="${lineItem.price}" /></td>
			</tr>

		</c:forEach>
		<tr>
			<td colspan="2">Total price : <c:out value="${order.price }" /></td>
		</tr>
	</table>
	<p />
	</div>
	<form action="/onlinebazzar" method="get">
		<div class="form-group">
			<div class="col-lg-offset-2 col-lg-10">
				<input type="submit" id="btnSumbit" class="btn btn-primary"
					value="Done" />
			</div>
		</div>
	</form>
</body>
</html>