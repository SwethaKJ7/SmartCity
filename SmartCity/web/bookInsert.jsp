<%-- 
    Document   : bookInsert
    Created on : 21-Jul-2022, 12:38:46 am
    Author     : Suryajith
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String eid = request.getParameter("eid");
            String ename = request.getParameter("ename");
            String ecat = request.getParameter("ecat");
            String date1 =request.getParameter("date1");
            String date2 =request.getParameter("date2");
            String amount =request.getParameter("amount");
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/city?"+"user=root&password=root");
            Statement st=con.createStatement();

            Statement st2 = con.createStatement();
//            Statement st = con.createStatement();
            PreparedStatement ps = null;
            
            String sql = "SELECT * FROM employee where eid="+eid;
            ResultSet rs2 = st2.executeQuery(sql);
            while (rs2.next()) {
                    String s = "false";
                    String sql1="Update employee set available=? where eid="+eid;
                    ps = con.prepareStatement(sql1);
                    ps.setString(1, s);
                    ps.executeUpdate();
                }
            st.executeUpdate("INSERT INTO booking(`eid`,`ename`,`bcat`,`date`,`date2`,`amount`) VALUES ('"+eid+"','"+ename+"','"+ecat+"','"+date1+"','"+date2+"','"+amount+"')");
            response.sendRedirect("index.jsp");
            }
            catch(Exception ex)
            {
                ex.printStackTrace();
            
            }
        %>
        
    </body>
</html>

