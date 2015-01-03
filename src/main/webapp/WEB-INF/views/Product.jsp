<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="productSearch" method="post">
		<input type="text" name="name"> <input type="submit"
			text="Search">
	</form>


	<c:forEach var="product" items="${productList}">
		${product.name}
		<a href="<c:url value='/product/addtocart/${product.id}' />" >Add TO Cart</a>
				</c:forEach>
		

</body>
</html>