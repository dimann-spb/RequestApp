<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>




<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <title>Прием заявок</title>
    <style>
        <%@include file="/resources/page_style.css"%>
    </style>
</head>

<body class="body_style">
<div class="top-toolbar">
    <span class="sp1">Dispatch manager</span>
</div>
<div align="center">
    <br>
<h2>
<a href="<c:url value="/requests"/>" target="_blank">Список заявок</a>
<br>
<br>
<a href="<c:url value="/users"/>" target="_blank">Список пользователей</a>
<br>
<br>
    <a href="<c:url value="/register"/>" target="_blank">Регистрация</a>
<br>
<br>
    <a href="<c:url value="/login"/>" target="_blank">Вход</a>
    </h2>
</div>
</body>
</html>
