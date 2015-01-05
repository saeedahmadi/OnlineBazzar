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
<div class="container">
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
</div>
</body>
</html>