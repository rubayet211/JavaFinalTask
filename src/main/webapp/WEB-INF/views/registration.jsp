<%@ page contentType="text/html" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h3 {
            text-align: center;
            color: #4285f4;
            margin-bottom: 20px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin-top: 20px;
        }

        label {
            display: block;
            color: #555;
        }

        input[type="text"],
        input[type="date"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        .error {
            color: red;
            font-size: 14px;
            margin-top: 2px;
            margin-left: 10px;
        }

        input[type="submit"] {
            text-decoration: none;
            display: inline-block;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            background-color: #4285f4;
            color: #fff;
            transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
        }

        input[type="submit"]:hover {
            background-color: #4444FF;
            color: #E2DED0;
        }

        a {
            cursor: pointer;
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
            border: 2px solid #4CAF50;
            padding: 10px 15px;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
        }

        a:hover {
            background-color: #4CAF50;
            color: #fff;
        }
    </style>
</head>
<body>

<form:form method="post" action="${pageContext.request.contextPath}/create" modelAttribute="user">
    <h3>Registration Page</h3>

    <label>Username</label>
    <form:input path="username" id="username"/>
    <form:errors path="username" cssClass="error"/>

     <label>Password</label>
     <form:input type="password" path="password" id="password"/>
     <form:errors path="password" cssClass="error"/>

    <label>Full Name</label>
    <form:input path="fullName" id="fullName"/>
    <form:errors path="fullName" cssClass="error"/>

    <label>Date Of Birth</label>
    <form:input type="date" path="dateOfBirth" id="dateOfBirth"/>
    <form:errors path="dateOfBirth" cssClass="error"/>

    <label>Email</label>
    <form:input path="email" id="email"/>
    <form:errors path="email" cssClass="error"/>

    <label>Gender</label>
    <div>
        <form:radiobutton path="gender" id="male" value="Male"/> Male
        <form:radiobutton path="gender" id="female" value="Female"/> Female
        <div class="error">
            <form:errors path="gender" cssClass="error"/>
        </div>
    </div>

    <label>Father Name</label>
    <form:input path="fatherName" id="fatherName"/>
    <form:errors path="fatherName" cssClass="error"/>

    <label>Mother Name</label>
    <form:input path="motherName" id="motherName"/>
    <form:errors path="motherName" cssClass="error"/>

    <label>NID</label>
    <form:input path="nid" id="nid"/>
    <form:errors path="nid" cssClass="error"/>

    <label>TIN</label>
    <form:input path="tin" id="tin"/>
    <form:errors path="tin" cssClass="error"/>

    <br>

    <input type="submit" value="Register"/>
    <br><br><br><br>
    <a href="${pageContext.request.contextPath}">Home</a>
</form:form>

</body>
</html>
