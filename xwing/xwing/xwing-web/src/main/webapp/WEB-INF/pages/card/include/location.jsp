<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="breadcrumb">
	<a href='<spring:url value="/main"/>'><spring:message code="location.home"/></a>>
    <spring:message code="location.${domain}"/>
    <c:if test="${!empty table}">
      <c:if test="${!empty parent}">
        ><a href='<spring:url value="/card/${parent}/list"/>'><spring:message code="location.${domain}.${parent}"/></a>
      </c:if>
      <c:choose>
        <c:when test="${empty param.mode}">
          ><spring:message code="location.${domain}.${table}"/>
        </c:when>
        <c:otherwise>
          <c:choose>
            <c:when test="${empty parent}">
              ><a href='<spring:url value="/card/${table}/list"/>'><spring:message code="location.${domain}.${table}"/></a>
            </c:when>
            <c:otherwise>
              ><spring:message code="location.${domain}.${table}"/>
            </c:otherwise>
          </c:choose>
          ><spring:message code="location.edit"/>
        </c:otherwise>
      </c:choose>
    </c:if>
</div>
