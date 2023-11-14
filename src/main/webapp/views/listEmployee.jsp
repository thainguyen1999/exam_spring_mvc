<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/214f774cc1.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <title>Customer </title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 100%;
            margin: 20px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }





        .table-container {
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }

        .action-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .action-buttons a {
            text-decoration: none;
        }
        .btn-create {
            background-color: #28a745;
            color: #fff;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }

        .btn-secondary {
            /*background-color: #dc3545;*/
            color: #fff;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>

</head>
<body>
<div class="container">
    <h1> List Employee</h1>
    <div class="table-container">
        <table border="1" class="table">
            <tr>
                <th >STT</th>
                <th>Name</th>
                <th >wage</th>
                <th>Action</th>

            </tr>
            <c:forEach var="employee" items="${employee}" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td>${employee.name}</td>
                    <td>${employee.wage}</td>
                    <td>
                        <a href="" onclick="">
                            <button type="button" class="btn btn-danger"><i class="fa-solid fa-trash"></i></button>
                        </a>

                        <a href="">
                            <button type="button" class="btn btn-primary"><i class="fa-solid fa-file-pen"></i></button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <div class="action-buttons">
        <a href="/employee/getFormCreateEmployee" class="btn btn-create"><i
                class="fa-solid fa-square-plus fa-bounce"></i></a>
        <a href="/employee/getAll" class="btn btn-secondary"><i class="fa-sharp fa-solid fa-backward fa-bounce"></i></a>

    </div>
</div>
</body>
</html>