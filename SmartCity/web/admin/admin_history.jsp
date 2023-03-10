<%@include file="admin_header.jsp" %>


<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Work History - Ongoing</h4>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered zero-configuration">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Employee</th>
                                    <th>Phone</th>
                                    <th>Booked</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    String Selq = "select *from tbl_history a inner join emp b on a.emp_id=b.emp_id inner join registration c on a.r_id=c.r_id where history_status='Added'";
                                    ResultSet rs = obj.select(Selq);
                                    int i = 0;
                                    while (rs.next()) {
                                        String id = rs.getString("history_id");
                                        String fname = rs.getString("r_name");
                                        String emp = rs.getString("f_name");
                                        String phone = rs.getString("r_phone");
                                        String date1 = rs.getString("date1");

                                        i++;
                                %>
                                <tr>
                                    <td><%=i%></td>
                                    <td><%=fname%></td>
                                    <td><%=emp%></td>
                                    <td><%=phone%></td>
                                    <td><%=date1%></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Work History - Completed</h4>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered zero-configuration">
                            <thead>
                                <tr>
                                    <th>#</th>
                                     <th>Employe</th>
                                    <th>Name</th>
                                    <th>Phone</th>
                                    <th>Booked</th>
                                    <th>Completed</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    String Selq2 = "select *from tbl_history a inner join emp b on a.emp_id=b.emp_id inner join registration c on a.r_id=c.r_id where history_status='Completed'";
                                    ResultSet rs2 = obj.select(Selq2);
                                    int j = 0;
                                    while (rs2.next()) {
                                        String id2 = rs2.getString("history_id");
                                        String fname2 = rs2.getString("r_name");
                                        String emp2 = rs2.getString("f_name");
                                        String phone2 = rs2.getString("r_phone");
                                        String date11 = rs2.getString("date1");
                                        String date22 = rs2.getString("date2");

                                        j++;
                                %>
                                <tr>
                                    <td><%=j%></td>
                                    <td><%=emp2%></td>
                                    <td><%=fname2%></td>
                                    <td><%=phone2%></td>
                                    <td><%=date11%></td>
                                    <td><%=date22%></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="admin_footer.jsp" %>