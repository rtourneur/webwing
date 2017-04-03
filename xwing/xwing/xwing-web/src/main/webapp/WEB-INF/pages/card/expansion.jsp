<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="table" value="expansion" scope="request"/>
<c:set var="parent" value="${entity}" scope="request"/>
<c:set var="domain" value="card" scope="request"/>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>
      <spring:message code="${domain}.${parent}.${table}.title" />
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
        <h2 align="center"><spring:message code="${domain}.${parent}.${table}.${command.mode}.label"/></h2>
        <form:hidden path="mode"/>
        <form:hidden path="ident"/>
        <form:hidden path="expansionOld"/>
        <table class="${domain}search">
          <tr>
            <td class="searchlabel">
              <spring:message code="${domain}.${table}.display.${parent}.name"/>
            </td>
            <td class="searchfield">
              ${name}
            </td>
          </tr>
          <tr>
            <td class="searchlabel">
              <form:label path="expansion"><spring:message code="${domain}.${table}.edit.name"/></form:label>
            </td>
            <td class="searchfield">
              <form:select path="expansion">
                <c:if test="${command.mode eq 'add' }">
                  <form:option value="0" label="--Please Select"/>
                </c:if>
                <c:forEach items="${list}" var="expansion">
                  <form:option value="${expansion.id}">
                    ${expansion.name}
                  </form:option>
                </c:forEach>
              </form:select>
            </td>
          </tr>
          <tr>
            <td class="searchlabel">
              <form:label path="quantity"><spring:message code="${domain}.${table}.edit.quantity"/></form:label>
            </td>
            <td class="searchfield">
              <form:input path="quantity"/>
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