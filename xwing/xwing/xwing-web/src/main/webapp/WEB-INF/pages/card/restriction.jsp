<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="table" value="restriction" scope="request"/>
<c:set var="parent" value="upgrade" scope="request"/>
<c:set var="domain" value="card" scope="request"/>
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
      <jsp:include page="include/location.jsp">
        <jsp:param value="${command.mode}" name="mode"/>
      </jsp:include>
      <h1 align="center"><spring:message code="${domain}.${table}.subtitle"/></h1>
      <form:form action="save" method="post">
        <h2 align="center"><spring:message code="${domain}.${table}.${command.mode}.label"/></h2>
        <form:hidden path="mode"/>
        <form:hidden path="ident"/>
        <form:hidden path="restrictionOld"/>
        <table class="${domain}search">
          <tr>
            <td class="searchlabel">
              <spring:message code="${domain}.${table}.display.upgradename"/>
            </td>
            <td class="searchfield">
              ${name}
            </td>
          </tr>
          <tr>
            <td class="searchlabel">
              <form:label path="restriction"><spring:message code="${domain}.${table}.edit.name"/></form:label>
            </td>
            <td class="searchfield">
              <form:select path="restriction">
                <c:if test="${command.mode eq 'add' }">
                  <form:option value="0" label="--Please Select"/>
                </c:if>
                <c:forEach items="${list}" var="restriction">
                  <form:option value="${restriction.id}">
                    ${restriction.restrictionType.name}:
                    <c:if test="${!empty restriction.shipTypes}">
                      <c:forEach items="${restriction.shipTypes}" var="shipType">
                        <img title="${shipType.name}" src="<c:url value='/resources/img/ship/${shipType.icon }'/>" >${shipType.name}
                      </c:forEach>
                    </c:if>
                    <c:if test="${restriction.shipSize != null}">${restriction.shipSize.name }</c:if>
                    <c:if test="${restriction.faction != null}">${restriction.faction.name }</c:if>
                  </form:option>
                </c:forEach>
              </form:select>
            </td>
          </tr>
        </table>
        <div class="${domain}search" align="center">
          <form:button id="submitButton" name="submitButton" ><spring:message code="main.edit.valid"/></form:button>
          <button id="resetButton" name="resetButton" type="reset"><spring:message code="main.edit.reset"/></button>
        </div>
      </form:form>
      <form action="back" method="get">
      	<div class="${domain}search" align="center">
          <button id="backButton" name="backButton" type="submit"><spring:message code="main.list.back"/></button>
        </div>
      </form>
    </div>
  </body>
</html>