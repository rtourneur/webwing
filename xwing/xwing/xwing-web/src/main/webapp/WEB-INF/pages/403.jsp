<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<body>
	<h1>HTTP Status 403 - <spring:message code="error.access.denied"/></h1>

	<c:choose>
		<c:when test="${empty username}">
		  <h2><spring:message code="error.credential"/></h2>
		</c:when>
		<c:otherwise>
		  <h2>${username} :<br/>
                    <spring:message code="error.credential"/></h2>
		</c:otherwise>
	</c:choose>

</body>
</html>