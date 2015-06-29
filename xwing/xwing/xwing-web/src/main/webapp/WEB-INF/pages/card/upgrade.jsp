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
        <h2 align="center"><spring:message code="${domain}.${table}.edit.label"/></h2>
        <form:hidden path="mode"/>
        <form:hidden path="ident"/>
        <c:set var="yes"><spring:message code="main.edit.yes"/></c:set>
        <c:set var="no"><spring:message code="main.edit.no"/></c:set>
        <table class="${domain}search">
            <tr>
              <td class="searchlabel">
                <form:label path="name"><spring:message code="${domain}.${table}.edit.name"/></form:label>
              </td>
              <td class="searchfield"><form:input path="name" size="30"  maxlength="30"/></td>
            </tr>
            <tr>
              <td class="searchlabel">
                <form:label path="description" ><spring:message code="${domain}.${table}.edit.description"/></form:label>
              </td>
              <td class="searchfield"><form:textarea path="description" cols="50" /></td>
            </tr>
            <tr>
              <td class="searchlabel">
                <form:label path="upgradeType" ><spring:message code="${domain}.${table}.edit.type"/></form:label>
              </td>
              <td class="searchfield">
                <form:select path="upgradeType">
                  <form:option value="0" label="--Please Select"/>
                  <form:options items="${upgradeTypes}" itemLabel="name" itemValue="ident" />
                </form:select>
              </td>
            </tr>
            <tr>
              <td class="searchlabel">
                <form:label path="cost" ><spring:message code="${domain}.${table}.edit.cost"/></form:label>
              </td>
              <td class="searchfield"><form:input path="cost" /></td>
            </tr>
            <tr>
              <td class="searchlabel">
                <form:label path="uniqueness" ><spring:message code="${domain}.${table}.edit.unique"/></form:label>
              </td>
              <td class="searchfield">
                <form:radiobutton path="uniqueness" value="true" label="${yes }"/>
                <form:radiobutton path="uniqueness" value="false" label="${no }"/>
              </td>
            </tr>
            <tr>
              <td class="searchlabel">
                <form:label path="limited" ><spring:message code="${domain}.${table}.edit.limited"/></form:label>
              </td>
              <td class="searchfield">
                <form:radiobutton path="limited" value="true" label="${yes }"/>
                <form:radiobutton path="limited" value="false" label="${no }"/>
              </td>
            </tr>
        </table>
        <div class="${domain}search" align="center">
          <form:button id="submitButton" name="submitButton" ><spring:message code="main.edit.valid"/></form:button>
          <button id="resetButton" name="resetButton" type="reset"><spring:message code="main.edit.reset"/></button>
        </div>
      </form:form>
      <form:form action="restriction/list" modelAttribute="restrictionform" method="post">
        <input type="hidden" name="id" value="${command.ident}">
        <div class="${domain}search" align="center">
          <a href="#" onclick="document.forms['restrictionform'].submit();"><spring:message code="${domain}.restriction.display.title"/></a>
        </div>
      </form:form>
      <form:form action="expansion/list" modelAttribute="expansionform" method="post">
        <input type="hidden" name="id" value="${command.ident}">
        <div class="${domain}search" align="center">
          <a href="#" onclick="document.forms['expansionform'].submit();"><spring:message code="${domain}.${table}.expansion.display.title"/></a>
        </div>
      </form:form>
      <form:form action="list" method="get">
        <div class="${domain}search" align="center">
          <form:button id="backButton" name="backButton" ><spring:message code="main.list.back"/></form:button>
        </div>
      </form:form>
    </div>
  </body>
</html>