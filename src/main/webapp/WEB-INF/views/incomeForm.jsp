<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Tax Calculation</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            color: #333;
            margin: 20px;
            text-align: center;
        }

        h2 {
            color: #4285f4;
        }

        .tax-form-container {
            max-width: 400px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            color: #4285f4;
        }

        label {
            display: block;
            color: #555;
            margin-top: 10px;
            text-align: left;
        }

        input {
            width: calc(100% - 22px); /* Adjusted width to consider border and padding */
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
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
            background-color: #357ae8;
            color: #fff;
        }
    </style>
</head>
<body>
    <h2>Tax Calculator BD</h2>
    <div class="tax-form-container">
        <h3>Income Details</h3>
        <form:form action="/final/calculateTax" method="post" modelAttribute="incomeDetails">
            <form:label path="basicPay">Basic Pay:</form:label>
            <form:input path="basicPay" id="basicPay" required="true"/>

            <form:label path="houseRentAllowance">House Rent Allowance:</form:label>
            <form:input path="houseRentAllowance" id="houseRentAllowance" required="true"/>

            <form:label path="conveyanceAllowance">Conveyance Allowance:</form:label>
            <form:input path="conveyanceAllowance" id="conveyanceAllowance" required="true"/>

            <form:label path="medicalAllowance">Medical Allowance:</form:label>
            <form:input path="medicalAllowance" id="medicalAllowance" required="true"/>

            <form:label path="otherAllowance">Other Allowance:</form:label>
            <form:input path="otherAllowance" id="otherAllowance" required="true"/>

            <form:label path="deductionAmount">Deduction Amount:</form:label>
            <form:input path="deductionAmount" id="deductionAmount" required="true"/>

            <input type="submit" value="Calculate Tax"/>
        </form:form>
    </div>
</body>
</html>
