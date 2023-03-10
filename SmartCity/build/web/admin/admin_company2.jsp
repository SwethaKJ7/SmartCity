<%@include file="admin_header.jsp" %>

<%    String approve = request.getParameter("approveid");
    String reject = request.getParameter("rejectid");
%>

<%
    if (reject != null) {
        String upq = "update tbl_company set company_status='Removed' where company_id='" + reject + "'";
        boolean b = obj.insert(upq);
        if (b == true) {
%>
<script type="text/javascript">
    alert("Rejected Successfully");
    setTimeout(function () {
        window.location.href = 'admin_company2.jsp'
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
                <h4 class="card-title">View Company Registrations</h4>
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
                                    Status
                                </th>
                                <th>
                                    Action
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                String selq = "select *from tbl_company a inner join tbl_owner b on a.owner_id=b.owner_id inner join tbl_room c on a.room_id=c.room_id where company_status='Verified'";
                                ResultSet rs = obj.select(selq);
                                int i = 0;
                                while (rs.next()) {
                                    i++;
                                    String id = rs.getString("company_id");
                                    String name = rs.getString("company_name");
                                    String address = rs.getString("company_address");
                                    String status = rs.getString("company_status");
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
                                    <%=status%>
                                </td>
                                <td>
                                    <a href="admin_company2.jsp?approveid=<%=id%>" class="btn btn-sm btn-success">Approve</a><p></p>
                                    <a href="admin_company2.jsp?rejectid=<%=id%>" class="btn btn-sm btn-danger">Reject</a>
                                </td>
                            </tr>
                            <%}%>
                            <%
                                String selq2 = "select *from tbl_company a inner join tbl_owner b on a.owner_id=b.owner_id inner join tbl_room c on a.room_id=c.room_id where company_status='to Constructor'";
                                ResultSet rs2 = obj.select(selq2);
                                int j = 0;
                                while (rs2.next()) {
                                    j++;
                                    String id2 = rs2.getString("company_id");
                                    String name2 = rs2.getString("company_name");
                                    String address2 = rs2.getString("company_address");
                                    String status2 = rs2.getString("company_status");
                                    String owner2 = rs2.getString("owner_name");
                                    String phoneno2 = rs2.getString("owner_phoneno");
                                    String roomno2 = rs2.getString("room_number");
                            %>
                            <tr>
                                <td>
                                    <%=j%>
                                </td>
                                <td>
                                    <%=owner2%>
                                </td>
                                <td>
                                    <%=roomno2%>
                                </td>
                                <td>
                                    <%=name2%>
                                </td>
                                <td>
                                    <%=address2%>
                                </td>
                                <td>
                                    <%=phoneno2%>
                                </td>
                                <td>
                                    <%=status2%>
                                </td>
                                <td>
                                    <a href="" class="btn btn-sm btn-outline-info">Under Construction</a>
                                </td>
                            </tr>
                            <%}%>

                        </tbody>
                    </table>

                </div>
                <br>
                <div class="table-responsive mt-3">
                    <table class="table table-header-bg">
                        <h4 class="card-title">Completed Constructions</h4>

                        <tbody >
                            <%
                                String selq3 = "select *from tbl_company a inner join tbl_owner b on a.owner_id=b.owner_id inner join tbl_room c on a.room_id=c.room_id inner join tbl_user d on a.user_id=d.user_id where company_status='Completed'";
                                ResultSet rs3 = obj.select(selq3);
                                int k = 0;
                                while (rs3.next()) {
                                    k++;
                                    String id3 = rs3.getString("company_id");
                                    String name3 = rs3.getString("company_name");
                                    String const3 = rs3.getString("user_name");
                                    String address3 = rs3.getString("company_address");
                                    String status3 = rs3.getString("company_status");
                                    String owner3 = rs3.getString("owner_name");
                                    String phoneno3 = rs3.getString("owner_phoneno");
                                    String roomno3 = rs3.getString("room_number");
                            %>
                            <tr>
                                <td>
                                    <%=k%>
                                </td>
                                <td>
                                    <%=owner3%>
                                </td>
                                <td>
                                    <%=roomno3%>
                                </td>
                                <td>
                                    <%=name3%>
                                </td>
                                <td>
                                    <%=address3%>
                                </td>
                                <td>
                                    <%=phoneno3%>
                                </td>
                                <td>
                                    Construction Done by :<a href="" class="btn btn-sm btn-outline-info"><%=const3%></a>
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