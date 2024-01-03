<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Tax Calculation Result</title>
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

        .result-container {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            color: #555;
            margin-top: 10px;
            text-align: left;
        }

        .result {
            font-size: 18px;
            font-weight: bold;
            color: #4285f4;
        }
    </style>
</head>
<body>
    <h2>Tax Calculation Result</h2>
    <div class="result-container">
        <label>Calculated Tax:</label>
        <div class="result">${calculatedTax}</div>
    </div>
</body>
</html>
