<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<div class="container">
<c:forEach var="p" items="${addresses}">
    Id: ${p.id} City: ${p.city}<br/>
  </c:forEach>
  
<h1>
    Add a Category
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
            <form:label path="name">
                <spring:message text="Name"/>
            </form:label>

            <form:input path="name" />
    </tr>
</div>
    
<div class="form-group">
    
    <tr>
            <c:if test="${!empty category.name}">
                <input type="submit"
                    value="<spring:message text="Edit Category"/>" />
            </c:if>
            <c:if test="${empty category.name}">
                <input type="submit"
                    value="Add Category" />
            </c:if>
    </tr>
</div>
</form:form>

<br>
</div>