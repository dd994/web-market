<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<html>
<head>
    <link rel="stylesheet" href="../../resources/styles/w3.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration</title>
</head>
<body class="w3-light-grey">


<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1 align="center">Enter your data</h1>
</div>
<form:form id="regForm" modelAttribute="user" action="registerProcess" method="post">

    <div class="w3-container w3-center">
        <table align="center">
            <tr>
                <td>
                    <form:label path="username">Username</form:label>
                </td>
                <td>
                    <form:input path="username" name="username" id="username"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="password">Password</form:label>
                </td>
                <td>
                    <form:password path="password" name="password" id="password"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="firstname">First name</form:label>
                </td>
                <td>
                    <form:input path="firstname" name="firstname" id="firstname"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="secondname">Last name</form:label>
                </td>
                <td>
                    <form:input path="secondname" name="secondname" id="secondname"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="email">Email</form:label>
                </td>
                <td>
                    <form:input path="email" name="email" id="email"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="address">Address</form:label>
                </td>
                <td>
                    <form:input path="address" name="address" id="address"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="phone">Phone</form:label>
                </td>
                <td>
                    <form:input path="phone" name="phone" id="phone"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <form:button id="register" name="register"
                                 class="w3-btn w3-hover-light-blue w3-round-large">Register</form:button>
                </td>
            </tr>
            <tr></tr>
            <tr>
                <td></td>
                <td><a href="index.jsp" class="w3-btn w3-hover-green w3-round-large">Home</a>
                </td>
            </tr>
        </table>
    </div>

</form:form>
</body>
</html>