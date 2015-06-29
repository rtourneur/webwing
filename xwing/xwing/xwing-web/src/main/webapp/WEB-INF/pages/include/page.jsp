<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<table class="${domain}page">
  <tr>
    <td align="left"><spring:message code="main.list.pages" arguments="${command.pageNum},${command.totalPages},${command.totalRows}"/></td>
    <c:if test="${!empty param.edit }">
      <td>
        <a href="add" >
          <img title="<spring:message code="main.list.add"/>" src="<c:url value='/resources/img/Actions-edit-add-icon.png'/>"/>
        </a>
      </td>
    </c:if>
    <td align="right" width="20%">
      <c:if test="${command.pageNum > 2}">
        <a href="list?nbRows=${command.nbRows}&pageNum=1">
          <img title="<spring:message code="main.list.first"/>" src="<c:url value='/resources/img/Arrow-double-left-icon.png'/>"/>
        </a>
      </c:if>
      <c:if test="${command.pageNum > 1}">
        <a href="list?nbRows=${command.nbRows}&pageNum=${command.pageNum-1}">
          <img title="<spring:message code="main.list.previous"/>" src="<c:url value='/resources/img/Arrow-left-icon.png'/>"/>
        </a>
      </c:if>
      <c:if test="${command.pageNum < command.totalPages}">
        <a href="list?nbRows=${command.nbRows}&pageNum=${command.pageNum+1}">
          <img title="<spring:message code="main.list.next"/>" src="<c:url value='/resources/img/Arrow-right-icon.png'/>"/>
        </a>
      </c:if>
      <c:if test="${command.pageNum < command.totalPages - 1}">
        <a href="list?nbRows=${command.nbRows}&pageNum=${command.totalPages}">
          <img title="<spring:message code="main.list.end"/>" src="<c:url value='/resources/img/Arrow-double-right-icon.png'/>"/>
        </a>
      </c:if>
    </td>
  </tr>
</table>
