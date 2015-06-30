<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="table" value="expansion" scope="request"/>
<c:set var="parent" value="${entity}" scope="request"/>
<c:set var="domain" value="card" scope="request"/>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <script src="<c:url value="/resources/js/xwing.js" />"></script>
    <title>
      <spring:message code="${domain}.${parent}.${table}.title" />
    </title>
  </head>
  <body class="${domain}">
    <jsp:include page="../header.jsp"/>
    <div class="principal">
      <jsp:include page="include/location.jsp"/>
      <h1 align="center"><spring:message code="${domain}.${table}.subtitle"/></h1>
      <table class="${domain}search">
        <tr>
          <td class="searchlabel">
            <spring:message code="${domain}.${table}.display.${parent}.name"/>
          </td>
          <td class="searchfield">
            ${name}
          </td>
        </tr>
      </table>
      <h2 align="center"><spring:message code="${domain}.${parent}.${table}.display.title"/></h2>
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
            <input type="hidden" name="ident" value="${ident}">
            <input type="hidden" name="id">
            <table class="${domain}list">
              <tr class="columnheader">
                <td width="23px"> </td>
                <td width="23px"> </td>
                <td width="20%"><spring:message code="${domain}.${table}.display.name"/></td>
                <td width="15%"><spring:message code="${domain}.${table}.display.quantity"/></td>
                <td width="15%"><spring:message code="${domain}.${table}.display.wave"/></td>
                <td ><spring:message code="${domain}.${table}.display.description"/></td>
              </tr>
              <c:forEach items="${list}" var="entity" varStatus="status">
                <tr class="text ${status.index % 2 == 0 ? 'cardroweven' : 'cardrowodd'}">
                  <td><img title="<spring:message code="main.list.edit"/>" src="<c:url value='/resources/img/pencil-add-icon.png'/>" class="smallicon" onclick="javascript:actionimg('editform', '${entity.expansion.id}', 'edit')"/></td>
                  <td><img title="<spring:message code="main.list.remove"/>" src="<c:url value='/resources/img/pencil-delete-icon.png'/>" class="smallicon" onclick="javascript:actionimg('editform', '${entity.expansion.id}', 'delete')"/></td>
                  <td>${entity.expansion.name}</td>
                  <td>${entity.quantity}</td>
                  <td>${entity.expansion.wave}</td>
                  <td>${entity.expansion.description}</td>
                </tr>
              </c:forEach>
            </table>
          </form:form>
          <form:form action="add" modelAttribute="addform" method="post">
            <input type="hidden" name="id" value="${ident}">
            <table class="${domain}page">
              <tr>
                <td align="left"><spring:message code="main.list.result" arguments="${count}"/></td>
                <td>
                  <img title="<spring:message code="main.list.add"/>" src="<c:url value='/resources/img/Actions-edit-add-icon.png'/>" onclick="document.forms['addform'].submit();"/>
                </td>
              </tr>
            </table>
          </form:form>
        </c:otherwise>
      </c:choose>
      <form action="back" method="get">
      	<div class="${domain}search" align="center">
          <button id="backButton" name="backButton" type="submit"><spring:message code="main.list.back"/></button>
        </div>
      </form>
    </div>
  </body>
</html>