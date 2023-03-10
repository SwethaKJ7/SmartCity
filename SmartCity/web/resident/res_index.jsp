<%@include file="admin_header.jsp" %>
<div class="main-content">
    <br>
    <div class="container-fluid">
        <div class="col-mg-4 col-md-12">
            <div class="card">
                <div class="card-body text-center">
                    <div class="profile-pic mb-20">
                        <img src="../img/photo_1007.jsp" width="150" class="rounded-circle" alt="admin">
                        <h4 class="mt-20 mb-0"></h4>
                        <a href="#" ></a>
                    </div>
                    <div class="badge badge-pill badge-dark">Cyber Village -  Admin</div>
                </div>
                <div class="row justify-content-center">
                    <div class="p-4 border-top mt-15">
                        <form method="post" enctype="multipart/form-data" action="admin_editphoto.jsp">
                            <input type="file" class="form-control form-control-sm" name="photo" id="photo">
                            <p></p>
                            <div class="row justify-content-center">
                            <button type="submit" name="submit" id="submit" class="btn btn-sm btn-primary">Update Photo</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="p-4 border-top mt-15">
                        <a href="../common_logout.jsp" class="btn btn-sm btn-danger">Log Out</a>
                    </div>
                </div>

            </div>
        </div>
    </div>        
</div>
<%@include file="admin_footer.jsp" %>