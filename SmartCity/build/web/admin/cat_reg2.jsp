<jsp:useBean class="DataBase.ConnectionClass" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
String edit = request.getParameter("eid");
    String remove = request.getParameter("remid");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String enddate = request.getParameter("enddate");
    String title2 = "";
    String cont2 = "";
    String enddate2 ="";
    if (request.getParameter("submit") != null) {
        if (edit != null) {
            String upQ = "update tbl_noti set noti_title='" + title + "', noti_content='" + content + "', noti_enddate='" + enddate + "' where noti_id='" + edit + "'";
            boolean b = obj.insert(upQ);
            if (b == true) {
                response.sendRedirect("admin_noti.jsp");
            } 
        } else {
            String insQ = "insert into tbl_noti(noti_title,noti_content,noti_startdate,noti_enddate,noti_status) values('" + title + "','" + content + "',CURDATE(),'" + enddate + "','0')";
            // out.print(insQ);
            boolean b = obj.insert(insQ);
        }
    }
    %>
    </body></html>