<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<c:set var="table" value="shiptype" scope="request"/>
<c:set var="domain" value="admin" scope="request"/>
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
      <jsp:include page="../include/search.jsp"/>
      <h2 align="center"><spring:message code="${domain}.${table}.display.title"/></h2>
      <c:choose>
        <c:when test="${empty list}">
    	  <spring:message code="main.list.noresult"/>
    	</c:when>
        <c:otherwise>
          <table class="${domain}list">
            <tr class="columnheader">
              <td width="3%"> </td>
              <td width="17%"><spring:message code="${domain}.${table}.display.name"/></td>
              <td width="5%" class="weapon">
                <img title="<spring:message code="${domain}.${table}.display.primaryweapon"/>" src="<c:url value='/resources/img/icone_weapon.png'/>">
              </td>
              <td width="5%" class="agility">
                <img title="<spring:message code="${domain}.${table}.display.agility"/>" src="<c:url value='/resources/img/icone_agility.png'/>">
              </td>
              <td width="5%" class="hull">
                <img title="<spring:message code="${domain}.${table}.display.hull"/>" src="<c:url value='/resources/img/icone_hull.png'/>">
              </td>
              <td width="5%" class="shield">
                <img title="<spring:message code="${domain}.${table}.display.shield"/>" src="<c:url value='/resources/img/icone_shield.png'/>">
              </td>
              <td width="5%" class="energy">
                <img title="<spring:message code="${domain}.${table}.display.energy"/>" src="<c:url value='/resources/img/icone_energy.png'/>">
              </td>
              <td width="15%"><spring:message code="${domain}.${table}.display.action"/></td>
              <td width="15%"><spring:message code="${domain}.${table}.display.upgrade"/></td>
              <td width="10%"><spring:message code="${domain}.${table}.display.shipsize"/></td>
              <td width="5%"><spring:message code="${domain}.${table}.display.dial"/></td>
            </tr>
            <c:forEach items="${list}" var="entity" varStatus="status">
              <tr class="text ${status.index % 2 == 0 ? 'adminroweven' : 'adminrowodd'}">
                <td class="icon"><img src="<c:url value='/resources/img/ship/${entity.icon }'/>"></td>
                <td>${entity.name }</td>
                <td class="weapon"><c:if test="${entity.primaryWeapon > 0}">${entity.primaryWeapon }</c:if></td>
                <td class="agility"><c:if test="${entity.agility > 0}">${entity.agility }</c:if></td>
                <td class="hull"><c:if test="${entity.hull > 0}">${entity.hull }</c:if></td>
                <td class="shield"><c:if test="${entity.shield > 0}">${entity.shield }</c:if></td>
                <td class="energy"><c:if test="${entity.energy > 0}">${entity.energy }</c:if></td>
                <td>
                  <c:if test="${!empty entity.actions}">
                    <c:forEach items="${entity.actions}" var="action">
                      <img title="${action.name}" src="<c:url value='/resources/img/action/${action.icon }'/>" >
                    </c:forEach>
                  </c:if>
                </td>
                <td >
                  <c:if test="${!empty entity.upgrades}">
                    <c:forEach items="${entity.upgrades}" var="upgrade">
                      <img title="${upgrade.upgradeType.name}" src="<c:url value='/resources/img/card/${upgrade.upgradeType.icon }'/>" class="smallicon"/>
                      <c:if test="${upgrade.quantity > 1}" >
                        <img title="${upgrade.upgradeType.name}" src="<c:url value='/resources/img/card/${upgrade.upgradeType.icon }'/>" class="smallicon"/>
                      </c:if>
                      <c:if test="${upgrade.quantity > 2}" >
                        <img title="${upgrade.upgradeType.name}" src="<c:url value='/resources/img/card/${upgrade.upgradeType.icon }'/>" class="smallicon"/>
                      </c:if>
                    </c:forEach>
                  </c:if>
                </td>
                <td>${entity.shipSize.name }</td>
                <td>
                  <form:form action="dial" modelAttribute="editform" method="post">
                    <input type="hidden" name="id">
                    <img title="<spring:message code="main.list.view"/>" src="<c:url value='/resources/img/accept-icon.png'/>" onclick="javascript:actionimg('editform', '${entity.id}', 'dial')"/>
                  </form:form>
                </td>
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