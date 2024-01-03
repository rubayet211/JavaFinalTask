<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <style>
        /* styles.css */

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            color: #333;
            margin: 0;
            padding: 20px;
            text-align: center;
        }

        h2 {
            color: #4285f4;
        }

        hr {
            border: 1px solid #ccc;
            margin: 20px 0;
        }

        .button-container {
            margin-top: 30px;
        }

        .button-container a {
            text-decoration: none;
            display: inline-block;
            padding: 15px 30px;
            margin: 10px;
            background-color: #4285f4;
            color: #fff;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s ease-in-out;
        }

        .button-container a:hover {
            background-color: #357ae8;
        }
    </style>
</head>
<body>
<h2>Tax Calculator BD</h2>

<hr>

<div class="button-container">
    <p>Already registered? Login Now!</p>

    <form:form action="tax" method="post" modelAttribute="user">
        <form:label path="username">Username:</form:label>
        <form:input path="username" required="true"/><br/>

        <form:label path="password">Password:</form:label>
        <form:password path="password" required="true"/><br/>

        <input type="submit" value="Login"/>
    </form:form>

    <p>New member? Register Now</p>
    <a href="create">Register</a>
</div>

</body>
</html>
