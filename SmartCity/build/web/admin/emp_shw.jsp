<%@include file="admin_header.jsp" %>
<%
String approve=request.getParameter("approveid");
String remove=request.getParameter("removeid");


if(approve!=null)
{
String ApproveQ="update emp set emp_status='Approved' where emp_id='"+approve+"' ";
boolean a= obj.insert(ApproveQ);
if(a==true)
{
response.sendRedirect("emp_shw2.jsp");
}
}

if(remove!=null)
{
String RemoveQ="update emp set emp_status='Removed' where emp_id='"+remove+"' ";
boolean b= obj.insert(RemoveQ);
if(b==true)
{
response.sendRedirect("emp_shw.jsp");
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
                                        <th>First name</th>
                                        <th>Last name</th>
                                        <th>Adaar no</th>
                                        <th>Phone No.</th>
                                        <th>adress</th>
                                        <th>gender</th>
                                        <th>job</th>
                                        <th>id proof</th>
                                        <th>email</th>
                                        <th>availability</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                    String Selq="select *from emp where emp_status='Added'";
                                    ResultSet rs=obj.select(Selq);
                                    int i=0;
                                    while(rs.next())
                                    {
                                        String id=rs.getString("emp_id");
                                    String fname=rs.getString("f_name");
                                    String lname=rs.getString("l_name");
                                    String ad_no=rs.getString("ad_no");
                                    String ph_no=rs.getString("ph_no");
                                    String address=rs.getString("address");
                                    String gender=rs.getString("gender");
                                    String job=rs.getString("job");
                                    String id_proof=rs.getString("id_proof");
                                    String email=rs.getString("email");
                                    String availability=rs.getString("availability");   
                         
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
                                             <td><%=job%></td>
                                              <td><img src="../img/<%=id_proof%>" height="50" width="50"></td>
                                        <td><%=email%></td>
                                        <td><%=availability%></td>
                                        
                                        <td>
                                            <a href="emp_shw.jsp?approveid=<%=id%>" class="btn btn-sm btn-success">Approve</a><p></p>
                                            <a href="emp_shw.jsp?removeid=<%=id%>" class="btn btn-sm btn-danger">Remove</a>
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