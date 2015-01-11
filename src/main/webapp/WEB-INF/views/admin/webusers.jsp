<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>



	<div class="container">
		<div class="main">
			<div class="row content_top">
				<div class="col-md-9 content_left">
					<h1>Manage WebUsers</h1>

					<c:url var="addAction" value="/webusers/add"></c:url>

					<%-- <form:form action="${addAction}" commandName="webuser" role="form">
						<div class="form-group">
							<c:if test="${!empty webuser.username}">
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
							<form:label path="username">
								<spring:message text="username" />
							</form:label>
							<form:input path="username" />
						</div>
						<div class="form-group">
							<c:if test="${!empty webuser.username}">
								<input type="submit"
									value="<spring:message text="Edit webuser"/>" />
							</c:if>
							<c:if test="${empty webuser.username}">
								<input type="submit" value="Add webuser" />
							</c:if>
						</div>
					</form:form> --%>

					<br>
					<h3>WebUsers List</h3>
					<c:if test="${!empty webusers}">
						<table class="table table-striped">
							<tr>
								<th width="80">ID</th>
								<th width="120">Username</th>
								<th width="120">Role</th>
								<th width="60">Enable</th>
							</tr>
							<c:forEach items="${webusers}" var="webuser">
								<tr>
									<td>${webuser.id}</td>
									<td>${webuser.username}</td>
									<td>${webuser.role}</td>
									<td><a href="<c:url value='/webusers/enableWebuser/${webuser.id}' />" >Enable</a></td>
								<%-- 	
									<td><a
										href="<c:url value='/webusers/edit/${webuser.id}' />">Edit</a></td>
									<td><a
										href="<c:url value='/webusers/remove/${webuser.id}' />">Delete</a></td> --%>
								</tr>
							</c:forEach>
						</table>
					</c:if>



					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>




