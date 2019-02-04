<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Редактор пользователей</title>
    <style>
        <%@include file="/resources/page_style.css"%>
    </style>
</head>
<body style="margin: 0px; background-color: rgba(93,157,27,0.12)">
<div class="top-toolbar">
    <span class="sp1">Dispatch manager</span>
</div>
<br/>

<c:url var="addAction" value="/users/edit/"/>
<form:form action="${addAction}" commandName="user">
    <table class="tg">
        <c:if test="${!empty user.username}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="username">
                    <spring:message text="Логин"/>
                </form:label>
            </td>
            <td>
                <form:textarea path="username" style="width:300px"/>

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
                <form:input path="lastname" style="width:200px"/>
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <button class="btnNew" type="submit"><img src="../resources/image/save-ico.png" alt="Сохранить"  style="vertical-align: middle;"><span style="margin-left: 10px">Сохранить</span></button>

            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
