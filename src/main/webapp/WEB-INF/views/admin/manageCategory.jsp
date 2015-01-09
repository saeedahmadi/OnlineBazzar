<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    

 

<div class="container">
<c:forEach var="p" items="${addresses}">
    Id: ${p.id} City: ${p.city}<br/>
  </c:forEach>
  
<h1>
    Manage a Category
</h1>
 
<c:url var="addAction" value="/category/add" ></c:url>
<form:form action="${addAction}" commandName="category" role="form">
<div class="form-group">

    <c:if test="${!empty category.name}">
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
    		<c:if test="${!empty category.name}">
            <form:label path="name">
                <spring:message text="Name"/>
            </form:label>

            <form:input path="name" />
            </c:if>
    </tr>
</div>
    
<div class="form-group">
    
    <tr>
            <c:if test="${!empty category.name}">
                <input type="submit"
                    value="<spring:message text="Edit Category"/>" />
            </c:if>
            <%-- <c:if test="${empty category.name}">
                <input type="submit"
                    value="Add Category" />
            </c:if> --%>
    </tr>
</div>
</form:form>

<br>
<c:if test="${!empty categories}">
<h3>Category List</h3>
    <table class="table table-striped">
    <tr>
        <th width="80">Category ID</th>
        <th width="120">Category Name</th>
        <th width="60">Edit</th>
        <!-- <th width="60">Delete</th> -->
    </tr>
    <c:forEach items="${categories}" var="category">
        <tr>
            <td>${category.id}</td>
            <td>${category.name}</td>
            <td><a href="<c:url value='/admin/edit/${category.id}' />" >Edit</a></td>
            <%-- <td><a href="<c:url value='/admin/remove/${category.id}' />" >Delete</a></td> --%>
        </tr>
    </c:forEach>
    </table>
</c:if>
</div>
