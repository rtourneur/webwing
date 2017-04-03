<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title><spring:message code="registration.form.title"/></title>
</head>
<body>
    <h1>
        <spring:message code="registration.form.title"/>
    </h1>
    <form:form modelAttribute="user" method="POST">
        <br>
        <tr><td>
            <label>
              <spring:message code="registration.user.firstname"/>
            </label>
        </td>
    <td><form:input path="firstname" value="" /></td>
    <form:errors path="firstname" element="div"/>
    </tr>
    <tr><td>
            <label>
                <spring:message code="registration.user.lastname"/>
            </label>
        </td>
    <td><form:input path="lastname" value="" /></td>
    <form:errors path="lastname" element="div" />
    </tr>
    <tr><td>
            <label>
                <spring:message code="registration.user.email"/>
            </label>
        </td>
    <td><form:input path="email" value="" /></td>
    <form:errors path="email" element="div" />
    </tr>
    <tr><td>
            <label>
                <spring:message code="registration.user.password"/>
            </label>
        </td>
    <td>
            <form:input path="password" value="" type="password" /></td>
    <form:errors path="password" element="div" />
    </tr>
    <tr><td>
            <label>
                <spring:message code="registration.user.confirmpass"/>
            </label>
        </td>
    <td><form:input path="matchingPassword" value="" type="password" /></td>
    <form:errors element="div" />
    </tr>
        <button type="submit">
          <spring:message code="registration.form.submit"/>
        </button>
    </form:form>
    <br>
    <a href="<c:url value="login" />">
        <spring:message code="registration.form.loginlink"/>
    </a>
</body>
</html>