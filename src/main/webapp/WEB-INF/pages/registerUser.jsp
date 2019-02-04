<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>


<html>
<head>
    <title>Регистрация</title>
    <style>
        <%@include file="/resources/page_style.css"%>
    </style>
</head>
<body class="body_style">
<c:url var="addAction" value="/register"/>
<form:form action="${addAction}" commandName="user">
    <table class="tg" style="margin-top: 170px">
        <tr>
            <td>
                <form:label path="username">
                    <spring:message text="E-mail"/>
                </form:label>
            </td>
            <td>
                <form:input path="username" style="width:300px"/>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="password">
                    <spring:message text="Пароль"/>
                </form:label>
            </td>
            <td>
                <form:input path="password" style="width:200px"/>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="firstname">
                    <spring:message text="Имя"/>
                </form:label>
            </td>
            <td>
                <form:input path="firstname" style="width:200px"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="lastname">
                    <spring:message text="Фамилия"/>
                </form:label>
            </td>
            <td>
                <form:input path="lastname" style="width:200px" />
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <button class="btnNew" type="submit"><img src="../resources/image/reg-ico.png" alt="Регистрация"  style="vertical-align: middle;"><span style="margin-left: 10px">Регистрация</span></button>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>
