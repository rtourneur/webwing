<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="main.title"/></title>
</head>
<body>
  <jsp:include page="header.jsp"/>
  <div class="principal" >
        <p>
          Bonjour <b><c:out value="${pageContext.request.remoteUser}"/></b>
        </p>
    <ul>
      <li>
        <span class="text" >
          <a href='<spring:url value="/xwing/admin/home"/>'><spring:message code="main.admin"/></a>
        </span>
      </li>
      <li>  
        <span class="text">
          <a href='<spring:url value="/xwing/card/upgrade/list"/>'><spring:message code="main.upgrades"/></a>
        </span>
      </li>
      <li>  
        <span class="text">
          <a href='<spring:url value="/xwing/card/pilot/list"/>'><spring:message code="main.pilots"/></a>
        </span>
      </li>
    </ul>
        <c:url var="logoutUrl" value="/logout"/>
        <form class="form-inline" action="${logoutUrl}" method="post">
          <input type="submit" value="Log out" />
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
  </div>
  <jsp:include page="footer.jsp"/>
</body>
</html>