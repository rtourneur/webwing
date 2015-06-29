<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="table" value="upgrade" scope="request"/>
<c:set var="domain" value="card" scope="request"/>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <script src="<c:url value="/resources/js/xwing.js" />"></script>
    <title>
      <spring:message code="${domain}.${table}.title" />
    </title>
  </head>
  <body class="${domain}">
    <jsp:include page="../header.jsp"/>
    <div class="principal">
      <jsp:include page="include/location.jsp"/>
      <h1 align="center"><spring:message code="${domain}.${table}.subtitle"/></h1>
      <jsp:include page="../include/search.jsp">
        <jsp:param value="${upgradeType}" name="upgradeType"/>
      </jsp:include>
      <h2 align="center"><spring:message code="${domain}.${table}.display.title"/></h2>
      <c:choose>
        <c:when test="${empty list}">
          <table class="${domain}page">
            <tr>
              <td>
                <spring:message code="main.list.noresult"/>
              </td>
              <td>
                <a href="add" >
                  <img title="<spring:message code="main.list.add"/>" src="<c:url value='/resources/img/Actions-edit-add-icon.png'/>"/>
                </a>
              </td>
            </tr>
          </table>
	    </c:when>
        <c:otherwise>
          <form:form action="edit" modelAttribute="editform" method="post">
            <input type="hidden" name="id">
            <table class="${domain}list">
              <tr class="columnheader">
                <td width="23px"> </td>
                <td width="23px"> </td>
                <td ><spring:message code="${domain}.${table}.display.name"/></td>
                <td width="5%"><spring:message code="${domain}.${table}.display.type"/></td>
                <td width="5%"><spring:message code="${domain}.${table}.display.cost"/></td>
                <td width="5%"><spring:message code="${domain}.${table}.display.unique"/></td>
                <td width="5%"><spring:message code="${domain}.${table}.display.limited"/></td>
                <td width="5%"><spring:message code="${domain}.${table}.display.restriction"/></td>
                <td width="35%"><spring:message code="${domain}.${table}.display.expansion"/></td>
              </tr>
              <c:set var="path"><c:url value='/resources/img'/></c:set>
              <c:forEach items="${list}" var="entity" varStatus="status">
                <tr class="text ${status.index % 2 == 0 ? 'cardroweven' : 'cardrowodd'}">
                  <td rowspan="2"><img title="<spring:message code="main.list.edit"/>" src="<c:url value='/resources/img/pencil-add-icon.png'/>" class="smallicon" onclick="javascript:actionimg('editform', '${entity.id}', 'edit')"/></td>
                  <td rowspan="2"><img title="<spring:message code="main.list.remove"/>" src="<c:url value='/resources/img/pencil-delete-icon.png'/>" class="smallicon" onclick="javascript:actionimg('editform', '${entity.id}', 'delete')"/></td>
                  <td>${entity.name }</td>
                  <td align="center">
                    <img title="${entity.upgradeType.name}" src="<c:url value='/resources/img/card/${entity.upgradeType.icon }'/>" class="smallicon"/>
                  </td>
                  <td align="center">${entity.cost }</td>
                  <td align="center">
                    <c:if test="${entity.uniqueness}">
                      <img title="<spring:message code="main.list.yes"/>" src="<c:url value='/resources/img/accept-icon.png'/>" />
                    </c:if>
                  </td>
                  <td align="center">
                    <c:if test="${entity.limited}">
                      <img title="<spring:message code="main.list.yes"/>" src="<c:url value='/resources/img/accept-icon.png'/>" />
                    </c:if>
                  </td>
                  <td align="center">
                    <c:choose>
                      <c:when test="${empty entity.restrictions}">
                        <img title="<spring:message code="main.list.add"/>" src="<c:url value='/resources/img/blue-plus-icon.png'/>" onclick="javascript:actionimg('editform', '${entity.id}', 'restriction/add')"/>
                      </c:when>
                      <c:otherwise>
                        <img title="<spring:message code="main.list.view"/>" src="<c:url value='/resources/img/accept-icon.png'/>" onclick="javascript:actionimg('editform', '${entity.id}', 'restriction/list')"/>
                      </c:otherwise>
                    </c:choose>
                  </td>
                  <td class="description">
                    <c:choose>
                      <c:when test="${empty entity.expansions}">
                        <img title="<spring:message code="main.list.add"/>" src="<c:url value='/resources/img/blue-plus-icon.png'/>" onclick="javascript:actionimg('editform', '${entity.id}', 'expansion/add')"/>
                      </c:when>
                      <c:otherwise>
                        <img title="<spring:message code="main.list.view"/>" src="<c:url value='/resources/img/accept-icon.png'/>" onclick="javascript:actionimg('editform', '${entity.id}', 'expansion/list')"/>
                      </c:otherwise>
                    </c:choose>
                    <c:forEach items="${entity.expansions}" var="expansion">
                      ${expansion.expansion.name} (${expansion.quantity})
                    </c:forEach>
                  </td>
                </tr>
                <tr class="text ${status.index % 2 == 0 ? 'cardroweven' : 'cardrowodd'}">
                  <td class="description" colspan="8">
                    ${fn:replace(entity.description, "$path", path)}
                  </td>
                </tr>
              </c:forEach>
            </table>
          </form:form>
          <jsp:include page="../include/page.jsp">
            <jsp:param value="add" name="edit"/>
          </jsp:include>
        </c:otherwise>
      </c:choose>
      <form:form action="back" method="get">
        <div class="${domain}search" align="center">
      	  <form:button id="backButton" name="backButton" ><spring:message code="main.list.back"/></form:button>
        </div>
      </form:form>
    </div>
  </body>
</html>