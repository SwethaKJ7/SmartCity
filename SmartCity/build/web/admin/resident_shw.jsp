<%@include file="admin_header.jsp" %>
<%
String approve=request.getParameter("approveid");
String remove=request.getParameter("removeid");


if(approve!=null)
{
String ApproveQ="update registration set r_status='Approved' where r_id='"+approve+"' ";
boolean a= obj.insert(ApproveQ);
if(a==true)
{
response.sendRedirect("resident_shw2.jsp");
}
}

if(remove!=null)
{
String RemoveQ="update registration set r_status='Removed' where r_id='"+remove+"' ";
boolean b= obj.insert(RemoveQ);
if(b==true)
{
response.sendRedirect("resident_shw.jsp");
}
}
%>

<div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Registered Suppliers</h4>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered zero-configuration">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Dob</th>
                                        <th>Gender</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Username</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                    String Selq="select *from registration where r_status='Added'";
                                    ResultSet rs=obj.select(Selq);
                                    int i=0;
                                    while(rs.next())
                                    {
                                        String id=rs.getString("r_id");
                                    String fname=rs.getString("r_name");
                                    String lname=rs.getString("dob");
                                    String ad_no=rs.getString("r_gender");
                                    String ph_no=rs.getString("r_email");
                                    String address=rs.getString("r_phone");
                                    String gender=rs.getString("r_username");   
                         
                                    i++;
                                    %>
                                    <tr>
                                        <td><%=i%></td>
                                        <td><%=fname%></td>
                                        <td><%=lname%></td>
                                         <td><%=ad_no%></td>
                                          <td><%=ph_no%></td>
                                           <td><%=address%></td>
                                            <td><%=gender%></td>
                                             
                                        
                                        <td>
                                            <a href="resident_shw.jsp?approveid=<%=id%>" class="btn btn-sm btn-success">Approve</a><p></p>
                                            <a href="resident_shw.jsp?removeid=<%=id%>" class="btn btn-sm btn-danger">Remove</a>
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
    </div>
                                <%@include file="admin_footer.jsp" %>