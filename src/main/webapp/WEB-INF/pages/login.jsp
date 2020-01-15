<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../resources/styles/w3.css">
    <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-C++cugH8+Uf86JbNOnQoBweHHAe/wVKN/mb0lTybu/NZ9sEYbd+BbbYtNpWYAsNP" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"
            integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
            crossorigin="anonymous"></script>

    <title>LogisticIS</title>

</head>

<body>
<div style="margin-left: 40%; margin-right: 40%; margin-top: 10%">
    <c:url value="login.jsp" var="index"/>
    <form action="${loginUrl}" method="post">
        <fieldset>
            <legend>Autentication</legend>
            <div class="form-group">
                <label for="login">Login</label>
                <input type="text" class="form-control" autocomplete="off" id="login" name="login"
                       placeholder="Enter Login">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" autocomplete="off" id="password" name="password"
                       placeholder="Enter Password">
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" id="rememberMe" name="rememberMe">
                    Remember me?
                </label>
            </div>
            <div>
                <button type="submit" class="btn btn-primary" style="margin-top: 12px">Submit</button>
            </div>
        </fieldset>
    </form>

    <c:if test="${param.error ne null}">
        <p>Wrong login or password!</p>
    </c:if>

    <c:if test="${param.logout ne null}">
        <p>Logout successful</p>
    </c:if>
</div>

</body>
</html>



