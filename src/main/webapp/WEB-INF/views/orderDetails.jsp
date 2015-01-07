<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	<div class="container">

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
</div>