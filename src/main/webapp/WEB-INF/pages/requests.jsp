<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>


<html>
<head>
    <title>Список заявок</title>
    <style>
        <%@include file="/resources/page_style.css"%>
    </style>
</head>
<body class="body_style">
    <div class="midle-toolbar">
        <span class="sp2">Список заявок</span>
        </div>
    <a href="/requests/add" target="_blank" style="margin: 10%"><button><img src="../resources/image/icons-add.png" alt="Новая заявка"  style="vertical-align: middle; padding-right: 13px">Новая заявка</button></a>

    <c:if test="${!empty listRequests}">
        <table class="tg" width="100%" align="center">
            <tr align="center" style="height: 60px">
                <th width="50">ID</th>
                <th width="200">Дата/Время</th>
                <th>Адрес</th>
                <th>Заявка</th>
                <th width="200">Отдел</th>
                <th width="150">Редактировать</th>
                <th width="150">Удалить</th>
            </tr>
            <c:forEach items="${listRequests}" var="request">
            <tr align="center">
                <td><a href="/requestdata/${request.id}" target="_blank"> ${request.id}</a></td>
                <td>${request.date}</td>
                <td>${request.adress}</td>
                <td align="left">${request.text}</td>
                <td>${request.department}</td>
                <td><a href="<c:url value='/edit/${request.id}'/>" target="_blank">Редактировать</a></td>
                <td><a href="<c:url value='/remove/${request.id}'/>">Удалить</a></td>
            </tr>
            </c:forEach>
        </table>
    </c:if>



</body>
</html>
