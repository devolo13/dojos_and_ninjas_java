<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <title>Dojos and Ninjas</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
</head>
<body class="container">
    <h1 class="mt-4 mb-3">New Ninja</h1>
    <form:form action="/ninjas/save" methods="post" modelAttribute ="ninja">
        <form:errors path="dojo" cssClass="text-danger mt-2"/>
        <div class="d-flex">
            <form:label path="dojo" cssClass="col-2">Dojo:</form:label>
            <form:select path="dojo" cssClass="form-control mb-2">
                <c:forEach var="dojo" items="${dojos}">
                    <form:option value="${dojo.id}" path="dojo">
                        <c:out value="${dojo.name}"/>
                    </form:option>
                </c:forEach>
            </form:select>
        </div>

        <form:errors path="firstName" cssClass="text-danger mt-2"/>
        <div class="d-flex">
            <form:label path="firstName" cssClass="mt-2 col-2">First Name:</form:label>
            <form:input type="text" path="firstName" cssClass="form-control mb-2"/>
        </div>

        <form:errors path="lastName" cssClass="text-danger mt-2"/>
        <div class="d-flex">
            <form:label path="lastName" cssClass="mt-2 col-2">Last Name:</form:label>
            <form:input type="text" path="lastName" cssClass="form-control mb-2"/>
        </div>

        <form:errors path="age" cssClass="text-danger mt-2"/>
        <div class="d-flex">
            <form:label path="age" cssClass="mt-2 col-2">Age:</form:label>
            <form:input type="text" path="age" cssClass="form-control mb-2"/>
        </div>
        <button class="btn btn-primary my-3">Create</button>
    </form:form>
    <a href="/dojos/new">Create a Dojo</a>
    <%--    <a href="/show">Show all Dojos</a>--%>
</body>
</html>

