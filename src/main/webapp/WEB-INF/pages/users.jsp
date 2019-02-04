<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>


<html>
<head>
    <title>Список пользователей</title>
    <style>
        <%@include file="/resources/page_style.css"%>
    </style>
</head>
<body class="body_style">

    <div class="midle-toolbar">
        <span class="sp2">Список пользователей</span>
    </div>

    <c:if test="${!empty listUsers}">
        <table class="tg" width="70%" align="center">
            <tr align="center" style="height: 60px">
                <th width="50">ID</th>
                <th width="200">Дата регистрации</th>
                <th>Логин</th>
                <th>Пароль</th>
                <th>Имя</th>
                <th>Фамилия</th>
                <th width="150">Редактировать</th>
                <th width="150">Удалить</th>
            </tr>
            <c:forEach items="${listUsers}" var="user">
            <tr align="center">
                <td><a href="/requestdata/${request.id}" target="_blank"> ${user.id}</a></td>
                <td>${user.regDate}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.firstname}</td>
                <td>${user.lastname}</td>
                <td><a href="<c:url value='users/edit/${user.id}'/>" target="_blank">Редактировать</a></td>
                <td><a href="<c:url value='users/remove/${user.id}'/>">Удалить</a></td>
            </tr>
            </c:forEach>
        </table>
    </c:if>



</body>
</html>
