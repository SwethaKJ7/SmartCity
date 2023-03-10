    <%@include file="admin_header.jsp" %>

<%
    String edit = request.getParameter("editid");
    String remove = request.getParameter("removeid");

    String title = request.getParameter("title");

    String title2 = "";

    if (request.getParameter("submit") != null) {
        if (edit != null) {
            String upQ = "update job_category set jobcat_name ='" + title + "' where jobcat_id='" + edit + "'";
            boolean b = obj.insert(upQ);
            if (b == true) {
                response.sendRedirect("jobcat_reg.jsp");
            }
        } else {
            String insQ = "insert into job_category(jobcat_name,jobcat_status) values('" + title + "','Added')";
            // out.print(insQ);
            boolean b = obj.insert(insQ);
        }       
    }
%>
<%
    if (edit != null) {
        String edq = "select *from job_category where jobcat_id='" + edit + "'";
        ResultSet rs = obj.select(edq);
        while (rs.next()) {
            title2 = rs.getString("jobcat_name");
        }
    }
%>

<%
    if (remove != null) {
        String RemQ = "update job_category set jobcat_status='Removed' where jobcat_id='" + remove + "'";
        boolean a = obj.insert(RemQ);
        if (a == true) {
            response.sendRedirect("jobcat_reg.jsp");
        }
    }
%>
<!-- Section: Design Block -->
<div class="content-wrapper">
    <div class="row">
        <div class="col-sm-12 mb-4 mb-xl-0">
            <h4 class="font-weight-bold text-dark">Admin / Category</h4>
        </div>
    </div>
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Add Category</h4>
                <form class="forms-sample" method="post">
                    <div class="form-group">
                        <div class="form-group">
                            <label for="exampleInputName1">Name</label>
                            <input type="text" class="form-control" id="title" name="title" placeholder="Enter category name" value="<%=title2%>" required>
                        </div>
                        <button type="submit" name="submit" id="submit" class="btn btn-primary mr-2">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
                        
<div class="col-xl-12 grid-margin-lg-0 grid-margin stretch-card">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">View Job Categories</h4>
            <div class="table-responsive mt-3">
                <table class="table table-header-bg">
                    <thead>
                        <tr>
                            <th>
                                Sl No
                            </th>
                            <th>        
                                Category
                            </th>
                            <th>
                                Action
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            String selq = "select *from job_category where jobcat_status='Added'";
                            ResultSet rs = obj.select(selq);
                            int i = 0;
                            while (rs.next()) {
                                i++;
                                String id = rs.getString("jobcat_id");
                                String name = rs.getString("jobcat_name");
                        %>
                        <tr>
                            <td>
                                <%=i%>
                            </td>
                            <td>
                                <%=name%>
                            </td>
                            <td>
                                
                                <a href="jobcat_reg.jsp?removeid=<%=id%>" class="btn btn-sm btn-danger">Remove</a>                                  
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</div>
<%@include file="admin_footer.jsp" %>
