<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%> 

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Calculator</title>
    <link href="style.css" rel="stylesheet" type="text/css" media="all" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bree+Serif&family=Roboto+Slab&display=swap');
        .ff-serif {
            font-family: 'Bree Serif', serif;
        }
        .ff-normal {
            font-family: 'Roboto Slab', serif;
        }

        div {
            text-align: center;
            font-size: 28px;
            padding: 5px;
            margin: 1rem 0;
        }
        form {
            align-items: center;
            text-align: center;
            justify-content: center;
            padding: 5px;
        }
        .forminput {
            width: 500px;
            height: 18px;
            font-size: 14px;
            color: #000;
            padding: 0.9em 0.7em;
            font-family: 'Roboto Slab', serif;
            font-size: 16px;
            background: #f3f3f3;
            outline: none;
            border: none;
            border-left: 2px solid #00b381;
            border-radius: 0px;
            outline: none !important;
            box-shadow: 0px 0px 3px #bdbcbc;
        }
        form button {
            font-size: 18px;
            padding: 8px 0px;
            width: 80px;
            height: 40px;
            color: #fff;
            outline: none;
            border: none;
            font-family: 'Roboto Slab', serif;
            border-radius: 5px;
            background: #00b381;
            cursor: pointer;
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="ff-serif"><u>Calculator</u></div>
    <form method="post" action="response.jsp">
        <input class="forminput" type="text" name="num1" placeholder="Enter Number 1"><br><br><!-- comment -->
        <input class="forminput" type="text" name="num2" placeholder="Enter Number 2"><br><br><!-- comment -->

        <button type="submit" name="btn"  value="+">+</button>&nbsp;&nbsp;
        <button type="submit" name="btn"  value="-">-</button>&nbsp;&nbsp;
        <button type="submit" name="btn"  value="*">*</button>&nbsp;&nbsp;
        <button type="submit" name="btn"  value="/">/</button>

    </form>
</body>
</html>