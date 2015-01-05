<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">

		<h1>Manage Vendors</h1>

		<c:url var="addAction" value="/vendors/add"></c:url>

		<form:form action="${addAction}" commandName="vendor" role="form">
			<div class="form-group">
				<c:if test="${!empty vendor.name}">
					<tr>
						<form:label path="id">
							<spring:message text="ID" />
						</form:label>
						<form:input path="id" readonly="true" size="8" disabled="true" />
						<form:hidden path="id" />
					</tr>
				</c:if>
			</div>
			<div class="form-group">
				<tr>
					<form:label path="name">
						<spring:message text="Name" />
					</form:label>

					<form:input path="name" />
				</tr>
			</div>
			<div class="form-group">

				<tr>
					<c:if test="${!empty vendor.name}">
						<input type="submit" value="<spring:message text="Edit Vendor"/>" />
					</c:if>
					<c:if test="${empty vendor.name}">
						<input type="submit" value="Add Vendor" />
					</c:if>

				</tr>
			</div>
		</form:form>

		<br>
		<h3>Vendors List</h3>
		<c:if test="${!empty vendors}">
			<table class="table table-striped">
				<tr>
					<th width="80">Vendor ID</th>
					<th width="120">Vendor Name</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
				<c:forEach items="${vendors}" var="vendor">
					<tr>
						<td>${vendor.id}</td>
						<td>${vendor.name}</td>
						<td><a href="<c:url value='/vendors/edit/${vendor.id}' />">Edit</a></td>
						<td><a href="<c:url value='/vendors/remove/${vendor.id}' />">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>