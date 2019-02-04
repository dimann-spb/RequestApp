<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Вход</title>
    <style>
        <%@include file="/resources/page_style.css"%>
    </style>
</head>
<body class="body_style">


    <form name="form_login" action="j_spring_security_check" method="post">
        <p> E-mail<input type="text" name="user_login"></p>
        <p> Пароль<input type="password" name="password_login"></p>
        <br>
        <input type="submit" value="Submit">

        <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
    </form>


</body>
</html>
