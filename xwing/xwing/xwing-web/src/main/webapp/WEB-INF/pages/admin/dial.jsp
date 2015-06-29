<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<c:set var="table" value="dial" scope="request"/>
<c:set var="parent" value="shiptype" scope="request"/>
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
      <h2 align="center"><spring:message code="${domain}.${table}.display.title"/></h2>
      <table class="${domain}search">
        <tr>
          <td class="searchlabel">
            <spring:message code="${domain}.${table}.display.shiptype"/>
          </td>
          <td class="searchfield">
            ${entity.name}
          </td>
        </tr>
      </table>
      <table class="dial">
        <c:forEach items="${list}" var="dial">
          <tr>
            <td>${dial.speed}</td>
            <c:forEach items="${dial.maneuvers}" var="icon">
              <td>
                <c:if test="${!empty icon}">
                  <img src="<c:url value='/resources/img/dial/${icon }'/>" class="smallicon"/>
                </c:if>
              </td>
            </c:forEach>
          </tr>
        </c:forEach>
      </table>
      <form:form action="list" method="get">
        <div class="${domain}search" align="center">
      	  <form:button id="backButton" name="backButton" ><spring:message code="main.list.back"/></form:button>
        </div>
      </form:form>
    </div>
  </body>
</html>