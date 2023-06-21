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
    <h1>New Dojo</h1>
    <form:form action="/dojos/save" methods="post" modelAttribute ="dojo" cssClass="mt-4">
        <form:errors path="name" cssClass="text-danger"/>
        <div class="d-flex">
            <form:label path="name" cssClass="mt-2 col-2">Name:</form:label>
            <form:input type="text" path="name" cssClass="form-control"/>
        </div>
        <button class="btn btn-primary my-3">Create</button>
    </form:form>
    <a href="/ninjas/new">Create a Ninja</a>
<%--    <a href="/show">Show all Dojos</a>--%>
</body>
</html>

