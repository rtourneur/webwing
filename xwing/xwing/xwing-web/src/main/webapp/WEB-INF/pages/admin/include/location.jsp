<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="breadcrumb">
  <a href='<spring:url value="/xwing/main"/>'><spring:message code="location.home"/></a>>
  <c:choose>
    <c:when test="${!empty table}">
      <a href='<spring:url value="/xwing/admin/home"/>'><spring:message code="location.${domain}"/></a>>
      <c:choose>
        <c:when test="${!empty parent}">
           <a href='<spring:url value="/xwing/admin/${parent}/list"/>'><spring:message code="location.${domain}.${parent}"/></a>>
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
