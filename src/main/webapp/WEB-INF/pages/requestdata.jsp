<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>


<html>
<head>

    <title>Информация о заявке</title>
    <style>
        <%@include file="/resources/page_style.css"%>
    </style>

</head>
<body style="margin: 0px; background-color: rgba(93,157,27,0.12)">
<div class="top-toolbar">
    <span class="sp1">Dispatch manager</span>
</div>
<h1>Информация о заявке</h1>

<table class="tg">
    <tr align="center">
        <th width="80">ID</th>
        <th>Дата/время</th>
        <th>Адрес</th>
        <th>Заявка</th>
        <th>Подающий заявку</th>
        <th width="120">Отдел</th>
        <th width="120">Заявку создал</th>
    </tr>
    <tr align="center">
        <td>${request.id}</td>
        <td>${request.date}</td>
        <td>${request.adress}</td>
        <td>${request.text}</td>
        <td>${request.nameCalled}</td>
        <td>${request.department}</td>
        <td>${request.author}</td>
    </tr>
</table>
</body>
</html>