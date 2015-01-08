<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <div class="container">
<br>
<h3>Vendor User List</h3>
<c:if test="${!empty vusers}">
    <table class="tg">
    <tr>
        <th width="80">id</th>
        <th width="120">username</th>
        <th width="60">Status</th>
    </tr>
    <c:forEach items="${vusers}" var="vuser">
        <tr>
            <td>${vuser.webuser.id}</td>
            <td>${vuser.webuser.username}</td>
            <td><a href="<c:url value='/vendor/enableWebuser/${vuser.webuser.id}' />" >Enable</a></td>
        </tr>
    </c:forEach>
    </table>
</c:if>
</div> --%>


<div class="container">
		<div class="main">

<c:url var="addAction" value="/vendor/user/add" ></c:url>
<form:form action="${addAction}" commandName="vuser" role="form">
<div class="form-group">

    <c:if test="${!empty vuser.firstName}">
    <tr>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
    </tr>
    </c:if>
</div>
<div class="form-group">    
    <tr>
    		<c:if test="${!empty vuser.firstName}">
            <form:label path="webuser.username">
                <spring:message text="Name"/>
            </form:label>

            <form:input path="webuser.username" />
            </c:if>
    </tr>
</div>
    
<div class="form-group">
    
    <tr>
            <c:if test="${!empty vuser.firstName}">
                <input type="submit"
                    value="<spring:message text="Edit Vendor User"/>" />
            </c:if>
            <%-- <c:if test="${empty category.name}">
                <input type="submit"
                    value="Add Category" />
            </c:if> --%>
    </tr>
</div>
</form:form>
</div>
</div>

<div class="container">
		<div class="main">
			<div class="row content_top">
				<div class="col-md-9 content_left">

					<br> <br />
					<h1>Vendor User List</h1>
					<c:if test="${!empty vusers}">

						<table class="table table-hover">
							<thead>
								<tr>
									<th width="60">Id</th>
									<th width="120">User Name</th>
        							<th width="60">Status</th>

									<th width="60">Edit</th>
									<th width="60">Delete</th>
								</tr>
							</thead>
							<c:forEach items="${vusers}" var="vuser">
								<tr>
									<td>${vuser.webuser.id}</td>
									<td>${vuser.webuser.username}</td>
									<td><a href="<c:url value='/vendor/enableWebuser/${vuser.webuser.id}' />" >Enable</a></td>

									<td><a
										href="<c:url value='/vendor/user/edit/${vuser.id}' />">Edit</a></td>
									<td><a
										href="<c:url value='/vendor/user/remove/${vuser.id}' />">Delete</a></td>
								</tr>
							</c:forEach>
						</table>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
</html>