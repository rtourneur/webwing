<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<form:form action="list" method="post">
	<form:hidden path="nbRows"/>
	<form:hidden path="pageNum"/>
  <h2 align="center"><spring:message code="${domain}.${table}.search.label"></spring:message></h2>
  <table class="${domain}search">
    <c:forEach items="${command.values}" var="field">
      <tr>
        <td class="searchlabel">
          <form:label path="values['${field.key}']" ><spring:message code="${domain}.${table}.search.${field.key}"></spring:message></form:label>
        </td>
        <td class="searchfield">
          <c:choose>
            <c:when test="${field.key eq 'upgradeType' and !empty upgradeTypes}">
              <form:select path="values['${field.key}']">
                <form:option value="">--</form:option>
                <form:options items="${upgradeTypes}" itemValue="id" itemLabel="name"/>
              </form:select>
            </c:when>
            <c:when test="${field.key eq 'shipType' and !empty shipTypes}">
              <form:select path="values['${field.key}']">
                <form:option value="">--</form:option>
                <form:options items="${shipTypes}" itemValue="id" itemLabel="name"/>
              </form:select>
            </c:when>
            <c:when test="${field.key eq 'restrictionType' and !empty restrictionTypes}">
              <form:select path="values['${field.key}']">
                <form:option value="">--</form:option>
                <form:options items="${restrictionTypes}" itemValue="name" itemLabel="name"/>
              </form:select>
            </c:when>
            <c:otherwise>
              <form:input path="values['${field.key}']" />
            </c:otherwise>
          </c:choose>
        </td>
      </tr>
    </c:forEach>
  </table>
  <div class="${domain}search" align="center">
  	<form:button id="submitButton" name="submitButton" ><spring:message code="main.list.search"/></form:button>
    <button id="resetButton" name="resetButton" type="reset"><spring:message code="main.list.reset"/></button>
  </div>
</form:form>
