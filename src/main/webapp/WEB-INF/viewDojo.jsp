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
    <h1 class="mt-4"><c:out value="${dojo.name}"/> Location Ninjas</h1>
    <table class="table table-striped text-center align-middle mt-4">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
        </tr>
        <c:forEach var="i" begin="0" end="${ninjas.size() -1}">
            <tr>
                <td><c:out value="${ninjas[i].firstName}"/></td>
                <td><c:out value="${ninjas[i].lastName}"/></td>
                <td><c:out value="${ninjas[i].age}"/></td>
            </tr>
        </c:forEach>
    </table>
    <a href="/dojos/new">Create a new Dojo</a>
    <br/>
    <a href="/ninjas/new">Create a new Ninja</a>
</body>
</html>

