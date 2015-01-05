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
		<div class="main">
			<div class="row content_top">
				<div class="col-md-9 content_left">
					<h1>Manage WebUsers</h1>

					<c:url var="addAction" value="/webusers/add"></c:url>

					<form:form action="${addAction}" commandName="webuser" role="form">
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
					</form:form>

					<br>
					<h3>WebUsers List</h3>
					<c:if test="${!empty webusers}">
						<table class="table table-striped">
							<tr>
								<th width="80">webuser ID</th>
								<th width="120">webuser username</th>
								<th width="60">Edit</th>
								<th width="60">Delete</th>
							</tr>
							<c:forEach items="${webusers}" var="webuser">
								<tr>
									<td>${webuser.id}</td>
									<td>${webuser.username}</td>
									<td><a
										href="<c:url value='/webusers/edit/${webuser.id}' />">Edit</a></td>
									<td><a
										href="<c:url value='/webusers/remove/${webuser.id}' />">Delete</a></td>
								</tr>
							</c:forEach>
						</table>
					</c:if>



					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>





	<%-- Welcome To Online Bazzar Admin Page
 
 <h1>
    Manage WebUsers
</h1>
 
<c:url var="addAction" value="/webusers/add" ></c:url>
 
<form:form action="${addAction}" commandName="webuser">
<table>
    <c:if test="${!empty webuser.username}">
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td>
    </tr>
    </c:if>
    
    
    <tr>
        <td>
            <form:label path="username">
                <spring:message text="username"/>
            </form:label>
        </td>
        <td>
            <form:input path="username" />
        </td>
    </tr>
    
    
    
    <tr>
        <td colspan="2">
            <c:if test="${!empty webuser.username}">
                <input type="submit"
                    value="<spring:message text="Edit webuser"/>" />
            </c:if>
            <c:if test="${empty webuser.username}">
                <input type="submit"
                    value="Add webuser" />
            </c:if>
        </td>
    </tr>
</table> 
</form:form>
<br>
<h3>webusers List</h3>
<c:if test="${!empty webusers}">
    <table class="tg">
    <tr>
        <th width="80">webuser ID</th>
        <th width="120">webuser username</th>
        <th width="60">Edit</th>
        <th width="60">Delete</th>
    </tr>
    <c:forEach items="${webusers}" var="webuser">
        <tr>
            <td>${webuser.id}</td>
            <td>${webuser.username}</td>
            <td><a href="<c:url value='/webusers/edit/${webuser.id}' />" >Edit</a></td>
            <td><a href="<c:url value='/webusers/remove/${webuser.id}' />" >Delete</a></td>
        </tr>
    </c:forEach>
    </table>
</c:if> --%>
</body>
</html>