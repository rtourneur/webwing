<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="breadcrumb">
  <a href='<spring:url value="/main"/>'><spring:message code="location.home"/></a>>
  <c:choose>
    <c:when test="${!empty table}">
      <a href='<spring:url value="/admin/home"/>'><spring:message code="location.${domain}"/></a>>
      <c:choose>
        <c:when test="${!empty parent}">
           <a href='<spring:url value="/admin/${parent}/list"/>'><spring:message code="location.${domain}.${parent}"/></a>>
          <spring:message code="location.${domain}.${table}"/>
        </c:when>
        <c:otherwise>
          <spring:message code="location.${domain}.${table}"/>
        </c:otherwise>
      </c:choose>  
      
    </c:when>
    <c:otherwise>
      <spring:message code="location.${domain}"/>
    </c:otherwise>
  </c:choose>
</div>
