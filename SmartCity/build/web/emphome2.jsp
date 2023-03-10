<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@include file="index_header.jsp"%>
<%
    String id = request.getParameter("id");
    String book = request.getParameter("empid");

    if (book != null) {
        String insq = "insert into tbl_history (emp_id,r_id, date1, date2,history_status) values('" + book + "','" + sid + "',CURDATE(),'0','Added')";
        String upq = "update emp set availability='1' where emp_id='" + book + "'";
        boolean a = obj.insert(insq);
        boolean b = obj.insert(upq);
        if (a == true) {
            response.sendRedirect("index.jsp");
        }
    }

%>