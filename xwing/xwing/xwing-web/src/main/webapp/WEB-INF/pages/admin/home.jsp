<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="domain" value="admin" scope="request"/>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>
      <spring:message code="${domain}.home.title"/>
    </title>
  </head>
  <body class="${domain}">
    <jsp:include page="../header.jsp"/>
    <div class="principal" >
      <jsp:include page="include/location.jsp"/>
      <h2 align="center"><spring:message code="${domain}.home.list"/></h2>
      <c:choose>
        <c:when test="${empty list}">
          <spring:message code="main.list.noresult"/>
        </c:when>
        <c:otherwise>
          <ul>
            <c:forEach items="${list}" var="table">
              <li>
                <span class="texte" >
                  <a href="${table}/list"><spring:message code="${domain}.home.${table}"/></a>
                </span>
              </li>
            </c:forEach>
          </ul>
        </c:otherwise>
      </c:choose>
    </div>
  </body>
</html>