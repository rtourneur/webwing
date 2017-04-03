<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="table" value="maneuvertype" scope="request"/>
<c:set var="domain" value="admin" scope="request"/>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>
      <spring:message code="${domain}.${table}.title" />
    </title>
  </head>
  <body class="${domain}">
    <jsp:include page="../header.jsp"/>
    <div class="principal">
      <jsp:include page="include/location.jsp"/>
      <h1 align="center"><spring:message code="${domain}.${table}.subtitle"/></h1>
      <jsp:include page="../include/search.jsp"/>
      <h2 align="center"><spring:message code="${domain}.${table}.display.title"/></h2>
      <c:choose>
        <c:when test="${empty list}">
    	  <spring:message code="main.list.noresult"/>
    	</c:when>
        <c:otherwise>
          <table class="${domain}list">
            <tr class="columnheader">
              <td width="5%"> </td>
              <td width="20%"><spring:message code="${domain}.${table}.display.name"/></td>
              <td width="20%"><spring:message code="${domain}.${table}.display.difficulty"/></td>
              <td width="50%"><spring:message code="${domain}.${table}.display.description"/></td>
            </tr>
            <c:forEach items="${list}" var="entity" varStatus="status">
              <tr class="text ${status.index % 2 == 0 ? 'adminroweven' : 'adminrowodd'}">
                <td class="icon"><img src="<c:url value='/resources/img/dial/${entity.icon }'/>"></td>
                <td>${entity.name }</td>
                <td>${entity.difficulty }</td>
                <td>${entity.description }</td>
              </tr>
            </c:forEach>
          </table>
          <jsp:include page="../include/page.jsp"/>
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