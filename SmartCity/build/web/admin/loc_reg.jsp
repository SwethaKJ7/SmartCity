<%@include file="admin_header.jsp" %>
<html>
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="card" style="border-radius: 15px;">
                        <div class="card-body p-5">
                            <h2 class="text-uppercase text-center mb-5">Add new place</h2>

                            <form method="post"  action="loc_reg2.jsp" enctype="multipart/form-data">

                                <div class="form-outline mb-4">
                                    <input type="text" id="form3Example1cg" name="name" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example1cg"> Name</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="text" id="form3Example3cg" name="adress" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example3cg">Adress</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="text" id="form3Example4cg" name="contact" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example4cg">Contact</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <select class="select" name="loc" id="locs">
                                        <option value="1">category</option>
                                        <%
                                            String id="";
                                            String name="";
                                        String selq="select *from category where cat_status<>'Removed'";
                                        ResultSet rs=obj.select(selq);
                                        while(rs.next())
                                        {
                                        id=rs.getString("cat_id");
                                        name=rs.getString("cat_name");
                                        %>
                                        <option value="<%=id%>"><%=name%></option>
                                        <%}%>
                                    </select>
                                </div>  
                                <div class="form-outline mb-4">
                                    <input type="text" id="form3Example4cg" name="link" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example4cg">link</label>
                                </div>
                                <div class="form-outline mb-4">
                                    <input type="file" name="photo" id="photo" class="form-control form-control-lg" />
                                    <label class="form-label" for="form3Example99">location photo </label>

                                    <div class="d-flex justify-content-center">
                                        <button type="submit"
                                                class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
                                    </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section></html><%@include file="admin_footer.jsp" %>