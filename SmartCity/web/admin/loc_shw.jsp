<%@include file="admin_header.jsp" %>
<%
String remove=request.getParameter("removeid");
%>
<%
if(remove!=null)
{
String RemoveQ="update loc_details set loc_status='Removed' where id='"+remove+"' ";
boolean b= obj.insert(RemoveQ);
if(b==true)
{
response.sendRedirect("loc_shw.jsp");
}
}
%>
<div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">added locations</h4>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered zero-configuration">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Adress</th>
                                        <th>Contact</th>
                                        <th>Category</th>
                                        <th>Link</th>
                                        <th>Photo</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                    String Selq="select *from location_details a inner join category b on a.category=b.cat_id where status='Added'";
                                    ResultSet rs=obj.select(Selq);
                                    int i=0;
                                    while(rs.next())
                                    {
                                        String id=rs.getString("id");
                                    String name=rs.getString("name");
                                    String adress=rs.getString("address");
                                    String contact=rs.getString("contact");
                                    String cat=rs.getString("cat_name");
                                    String link=rs.getString("link");
                                    String photo=rs.getString("image");   
                         
                                    i++;
                                    %>
                                    <tr>
                                        <td><%=i%></td>
                                        <td><%=name%></td>
                                        <td><%=adress%></td>
                                         <td><%=contact%></td>
                                          <td><%=cat%></td>
                                           <td><%=link%></td>
                                              <td><img src="../img/<%=photo%>" height="50" width="50"></td>
                                        
                                        <td>
                                            <a href="loc_shw.jsp?removeid=<%=id%>" class="btn btn-sm btn-danger">Remove</a>
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