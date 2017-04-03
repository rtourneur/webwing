<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title><spring:message code="main.title"/></title>
  </head>
  <body>
    <jsp:include page="header.jsp"/>
    <div class="principal" >
      <c:choose>
      	<c:when test="${pageContext.request.userPrincipal.name != null}">
      		<p>Bonjour <b><c:out value="${pageContext.request.userPrincipal.name}"/></b></p>
      	</c:when>
      	<c:otherwise>
      		<a href='<spring:url value="/login"/>'><spring:message code="main.login"/></a>
      	</c:otherwise>
      </c:choose>
      <ul>
        <li>
          <span class="text" >
          <a href='<spring:url value="/admin/home"/>'><spring:message code="main.admin"/></a>
        </span>
      </li>
      <li>  
        <span class="text">
          <a href='<spring:url value="/card/upgrade/list"/>'><spring:message code="main.upgrades"/></a>
        </span>
      </li>
      <li>  
        <span class="text">
          <a href='<spring:url value="/card/pilot/list"/>'><spring:message code="main.pilots"/></a>
        </span>
      </li>
    </ul>
    <sec:authorize access="hasRole('ROLE_USER')">
        <c:url var="logoutUrl" value="/logout"/>
        <form class="form-inline" action="${logoutUrl}" method="post">
          <input type="submit" value="Log out" />
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
    </sec:authorize>
  </div>
  <jsp:include page="footer.jsp"/>
</body>
</html>