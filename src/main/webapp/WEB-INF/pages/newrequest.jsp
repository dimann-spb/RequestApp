<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Новая заявка</title>
    <style>
        <%@include file="/resources/page_style.css"%>
    </style>
</head>
<body style="margin: 0px; background-color: rgba(93,157,27,0.12)">
<div class="top-toolbar">
    <span class="sp1">Dispatch manager</span>
</div>
<br/>

<c:url var="addAction" value="/requests/add"/>
<form:form action="${addAction}" commandName="request">
    <table class="tg">
        <tr>
            <td>
                <form:label path="text">
                    <spring:message text="Заявка"/>
                </form:label>
            </td>
            <td>
                <form:textarea path="text" style="width:300px; height:150px;"/>
                <br>
                <form:errors path="text" id="textId" cssStyle="color: #ff2635"/>
            </td>

        </tr>

        <tr>
            <td>
                <form:label path="adress">
                    <spring:message text="Адрес"/>
                </form:label>
            </td>
            <td>
                <form:input path="adress" style="width:200px"/>
                <br>
                <form:errors path="adress" id="adressId" cssStyle="color: #ff2635"/>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="nameCalled">
                    <spring:message text="Заявку подал"/>
                </form:label>
            </td>
            <td>
                <form:select path="nameCalled" >
                    <form:option value="Менеджер"/>
                    <form:option value="Заведующая"/>
                    <form:option value="Продавец"/>
                </form:select>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="department">
                    <spring:message text="Отдел"/>
                </form:label>
            </td>
            <td>
                <form:select path="department">
                    <form:option value="Отдел 1"/>
                    <form:option value="Отдел 2"/>
                    <form:option value="Отдел 3"/>
                </form:select>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="author">
                    <spring:message text="Заявку принял(а)"/>
                </form:label>
            </td>
            <td>
                <form:input path="author" style="width:200px" />
                <br>
                <form:errors path="author" id="authorId" cssStyle="color: #ff2635"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                    <button class="btnNew" type="submit"><img src="../resources/image/icons8-add.png" alt="Добавить заявку"  style="vertical-align: middle;"><span style="margin-left: 10px">Добавить заявку</span></button>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
