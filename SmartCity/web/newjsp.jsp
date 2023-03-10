<%-- 
    Document   : newjsp
    Created on : 25-Nov-2022, 4:13:10 pm
    Author     : archa
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
               <%
           Connection connection = DriverManager.getConnection(
            "jdbc:odbc:data");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from location_details") ;
       %>

    </body>
</html>
