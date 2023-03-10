<%@include file="admin_header.jsp" %>

<%    String approve = request.getParameter("approveid");
    String reject = request.getParameter("rejectid");
%>
<%
    if (approve != null) {
        String upq = "update tbl_company set company_status='Verified' where company_id='" + approve + "'";
        boolean b = obj.insert(upq);
        if (b == true) {
%>
<script type="text/javascript">
    alert("Approved Successfully");
    setTimeout(function () {
        window.location.href = 'admin_company2.jsp'
    }, 40);
</script>
<%
        }
    }
%>

<%
    if (reject != null) {
        String upq = "update tbl_company set company_status='Rejected' where company_id='" + reject + "'";
        boolean b = obj.insert(upq);
        if (b == true) {
%>
<script type="text/javascript">
    alert("Rejected Successfully");
    setTimeout(function () {
        window.location.href = 'admin_company1.jsp'
    }, 40);
</script>
<%
        }
    }
%>
<div class="content-wrapper">
    <div class="row">
        <div class="col-sm-12 mb-4 mb-xl-0">
            <h4 class="font-weight-bold text-dark">Admin / Company</h4>
        </div>
    </div>
    <div class="col-xl-12 grid-margin-lg-0 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">View Company Registration Requests</h4>
                <div class="table-responsive mt-3">
                    <table class="table table-header-bg">
                        <thead>
                            <tr>
                                <th>
                                    Sl No
                                </th>
                                <th>
                                    Owner Name
                                </th>
                                <th>
                                    Room No.
                                </th>
                                <th>
                                    Company Name
                                </th>
                                <th>
                                    Address
                                </th>
                                <th>
                                    Phone
                                </th>
                                <th>
                                    Action
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                String selq = "select *from tbl_company a inner join tbl_owner b on a.owner_id=b.owner_id inner join tbl_room c on a.room_id=c.room_id where company_status='Requested For Verification'";
                                ResultSet rs = obj.select(selq);
                                int i = 0;
                                while (rs.next()) {
                                    i++;
                                    String id = rs.getString("company_id");
                                    String name = rs.getString("company_name");
                                    String address = rs.getString("company_address");
                                    String owner = rs.getString("owner_name");
                                    String phoneno = rs.getString("owner_phoneno");
                                    String roomno = rs.getString("room_number");
                            %>
                            <tr>
                                <td>
                                    <%=i%>
                                </td>
                                <td>
                                    <%=owner%>
                                </td>
                                <td>
                                    <%=roomno%>
                                </td>
                                <td>
                                    <%=name%>
                                </td>
                                <td>
                                    <%=address%>
                                </td>
                                <td>
                                    <%=phoneno%>
                                </td>
                                <td>
                                    <a href="admin_company1.jsp?approveid=<%=id%>" class="btn btn-sm btn-success">Approve</a><p></p>
                                    <a href="admin_company1.jsp?rejectid=<%=id%>" class="btn btn-sm btn-danger">Reject</a>
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
<!-- content-wrapper ends -->
<%@include file="admin_footer.jsp" %>