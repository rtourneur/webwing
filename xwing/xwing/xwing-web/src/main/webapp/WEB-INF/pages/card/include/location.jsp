<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="breadcrumb">
	<a href='<spring:url value="/xwing/main"/>'><spring:message code="location.home"/></a>>
    <spring:message code="location.${domain}"/>
    <c:if test="${!empty table}">
      <c:if test="${!empty parent}">
        ><a href='<spring:url value="/xwing/card/${parent}/list"/>'><spring:message code="location.${domain}.${parent}"/></a>
      </c:if>
      <c:choose>
        <c:when test="${empty param.mode}">
          ><spring:message code="location.${domain}.${table}"/>
        </c:when>
        <c:otherwise>
          ><spring:message code="location.${domain}.${table}"/>
          ><spring:message code="location.edit"/>
        </c:otherwise>
      </c:choose>
    </c:if>
</div>
