<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Bree+Serif&family=Roboto+Slab&display=swap');
        h1{
            text-align: center;
            font-size: 21px;
            font-family: 'Roboto Slab', serif;
        }
        div {
            text-align: center;
            font-size: 28px;
            padding: 5px;
            margin: 1rem 0;
            font-family: 'Bree Serif', serif;
            font-size: 24px;
        }
        </style>
    </head>
    <body>
    <%!
        static int add(int a, int b){
            return a+b;
        }
        static int diff(int a, int b){
            return a-b;
        }        
        static int mul(int a, int b){
            return a*b;
        }        
        static int div(int a, int b){
            return a/b;
        }
    %>
    <%
        String a= request.getParameter("num1");
        String b= request.getParameter("num2");  
        String op= request.getParameter("btn");
        float c= 0;
        if (op.equals("+")){
            c += add(Integer.parseInt(a),Integer.parseInt(b));
            out.println("<h1>Sum result is :"+c+"</h1>");
        }
        else if(op.equals("-")){
            c += diff(Integer.parseInt(a),Integer.parseInt(b));
            out.println("<h1>Difference result is :"+c+"</h1>");
        }
        else if(op.equals("*")){
            c += mul(Integer.parseInt(a),Integer.parseInt(b));
            out.println("<h1>Multiplictaion result is :"+c+"</h1>");
        }
        else {
            c += div(Integer.parseInt(a),Integer.parseInt(b));
            out.println("<h1>Division result is :"+c+"</h1>");
        }
    %>
    
    <div><u><a href="http://localhost:8080/Calculator/" style="text-decoration: none; color: #223BC9">Home</a></u></div>
    </body>
</html>
